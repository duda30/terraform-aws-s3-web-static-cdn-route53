

Esse módulo oferece a criação de uma distribuição CloudFront, a criação de um bucket com a função de web static site e 
dois registros no ROUTE53.



Módulo CDN:

restri-type | é o tipo da restrição que você quer fazer na distribuição | "whitelist" = default

website_domain_name | domínio totalmente qualificado do seu site | null = default

acm_certificate_arn_to_use | ARN do certificado ACM criado na AWS de forma manual, quando criar, 
indique o seu domínio com "www" e sem "www" - totalmente qualificado | null = default

locations | localizações que deseja liberar o acesso a distribuição | ["BR"] = default



Módulo ROUTE-53:

zone-name | nome da zona já existente/domínio na sua conta AWS | null = default

cdn-domain-name | valor "domain_name" do módulo filho "cdn" | declarar = module.cdn.domain_name_cdn

cdn-hosted-zone-id | valor "hosted_zone_id" do módulo filho "cdn" | declarar = module.cdn.hosted_zone_id



Módulo S3:

name | nome do bucket a ser criado | null = default

suffix-index-html | nome do arquivo html que deve estar na mesma pasta desse módulo, caso contrário, passar o caminho absoluto do arquivo | null = default

error-html | arquivo html - página de erro, passar o caminho absoluto ou nome do arquivo dentro dessa pasta | null = default

bucket-object-name | lista com os nomes/caminho absoluto dos arq. html do seu site | null = default

acl | acl do bucket | "public-read" = default
