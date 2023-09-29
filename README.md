

Esse módulo oferece a criação de uma distribuição CloudFront, a criação de um bucket com a função de web static site e 
dois registros no ROUTE53.


| **Módulo CDN** |                          |                                             |                             |
| -------------- | ------------------------ | ------------------------------------------- | --------------------------- |
| Campo          | Descrição                | Exemplo                                     | Valor Padrão                |
| restri-type    | Tipo de restrição        | "whitelist"                                | default                     |
| website_domain_name | Domínio do site     | null                                       | default                     |
| acm_certificate_arn_to_use | ARN do certificado ACM | ARN aqui                         | default                     |
| locations      | Localizações liberadas  | ["BR"]                                     | default                     |

| **Módulo ROUTE-53** |                     |                                             |                             |
| --------------------- | ------------------- | ------------------------------------------- | --------------------------- |
| Campo                | Descrição           | Exemplo                                     | Valor Padrão                |
| zone-name            | Nome da zona        | null                                        | default                     |
| cdn-domain-name      | Domínio CDN         | Valor "domain_name" do módulo filho "cdn"  | declarar = module.cdn.domain_name_cdn |
| cdn-hosted-zone-id   | ID da zona hospedada do CDN | Valor "hosted_zone_id" do módulo filho "cdn" | declarar = module.cdn.hosted_zone_id |

| **Módulo S3** |                          |                                             |                             |
| ------------- | ------------------------ | ------------------------------------------- | --------------------------- |
| Campo         | Descrição                | Exemplo                                     | Valor Padrão                |
| name          | Nome do bucket           | null                                        | default                     |
| suffix-index-html | Nome do arquivo HTML   | null                                        | default                     |
| error-html    | Arquivo HTML de erro     | null                                        | default                     |
| bucket-object-name | Lista de arquivos HTML | null                                        | default                     |
| acl           | ACL do bucket            | "public-read"                               | default                     |
