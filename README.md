<a href=https://magnetarconsulting.co.uk><img src="https://magnetarconsulting.co.uk/wp-content/uploads/2020/04/small-helping-you-innovate-magnetar.png" width="300"></a>

# terraform-naming-standard
Terraform (>= 0.12.0) module to output values in a consistent way for consistent naming

- [Intro](#Intro)
- [Inputs](#Inputs)
- [Outputs](#Outputs)
- [Support](#Support)
- [License](#License)


----
## Intro
This module will return values formatted in a consistent way. This can be used to ensure all other modules conform to the same standard.

---

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| additional\_tag\_map | Additional tags for appending to each tag map | `map(string)` | `{}` | no |
| attributes | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| context | Default context to use for passing state between label invocations | <pre>object({<br>    namespace           = string<br>    environment         = string<br>    name                = string<br>    enabled             = bool<br>    delimiter           = string<br>    attributes          = list(string)<br>    label_order         = list(string)<br>    tags                = map(string)<br>    additional_tag_map  = map(string)<br>    regex_replace_chars = string<br>  })</pre> | <pre>{<br>  "additional_tag_map": {},<br>  "attributes": [],<br>  "delimiter": "",<br>  "enabled": true,<br>  "environment": "",<br>  "label_order": [],<br>  "name": "",<br>  "namespace": "",<br>  "regex_replace_chars": "",<br>  "tags": {}<br>}</pre> | no |
| delimiter | Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes` | `string` | `"-"` | no |
| enabled | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| environment | Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT' | `string` | `""` | no |
| label\_order | The naming order of the id output and Name tag | `list(string)` | `[]` | no |
| name | Solution name, e.g. 'app' or 'jenkins' | `string` | `""` | no |
| namespace | Namespace, which could be your team, business name or abbreviation, e.g. 'mag' or 'tar' | `string` | `""` | no |
| regex\_replace\_chars | Regex to replace chars with empty string in `namespace`, `environment` and `name`. By default only hyphens, letters and digits are allowed, all other chars are removed | `string` | `"/[^a-zA-Z0-9-]/"` | no |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |

---

## Outputs

| Name | Description |
|------|-------------|
| asg\_tags\_as\_list\_of\_maps | ASG tags as a list of maps with propagate\_at\_launch = true. |
| attributes | List of attributes |
| context | Context of this module to pass to other label modules |
| delimiter | Delimiter between `namespace`, `environment`, `name` and `attributes` |
| environment | Normalized environment |
| id | Disambiguated ID |
| label\_order | The naming order of the id output and Name tag |
| name | Normalized name |
| namespace | Normalized namespace |
| tags | Normalized Tag map |
| tags\_as\_list\_of\_maps | Additional tags as a list of maps, which can be used in several AWS resources |

---

## Support

Reach out to me at one of the following places!

- Website at <a href="https://magnetarconsulting.co.uk" target="_blank">`magnetarconsulting.co.uk`</a>
- Twitter at <a href="https://twitter.com/magnetarIT" target="_blank">`@magnetarIT`</a>
- LinkedIn at <a href="hhttps://www.linkedin.com/company/magnetar-it-consulting" target="_blank">`magnetar-it-consulting`</a>

---

## License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

