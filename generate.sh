#!/usr/bin/env bash

MAIN_PACKAGE="$1"

docker run --rm -v "${PWD}":/local openapitools/openapi-generator-cli generate \
  --library jvm-spring-webclient  -i /local/woocommerce-openapi-3.0.x.yml -g kotlin \
   -o /local/out/woocommerce-client \
    --package-name "${MAIN_PACKAGE}.woocommerce" \
    --model-package "${MAIN_PACKAGE}.woocommerce.model" \
    --invoker-package "${MAIN_PACKAGE}.data.woocommerce" \
    --api-package "${MAIN_PACKAGE}.woocommerce.api" \
     --additional-properties=useSpringBoot3=true,reactive=true,useSwaggerUI=true,enumPropertyNaming=UPPERCASE,serializationLibrary=jackson,library=jvm-spring-webclient,idea=true,groupId=io.nerd4rent