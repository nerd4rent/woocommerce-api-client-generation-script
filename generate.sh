 docker run --rm -v "${PWD}":/local openapitools/openapi-generator-cli generate --library jvm-spring-webclient  -i /local/woocommerce-openapi-3.0.x.yml -g kotlin -o /local/out/woocommerce-client --model-package 'io.nerd4rent.woocommerce.model' --invoker-package 'io.nerd4rent.data.woocommerce' --api-package 'io.nerd4rent.woocommerce.api'  --additional-properties=useSpringBoot3=true,reactive=true,useSwaggerUI=true,enumPropertyNaming=UPPERCASE,serializationLibrary=jackson,library=jvm-spring-webclient,idea=true,groupId=io.nerd4rent,invokerPackage=io.nerd4rent.data.woocommerce