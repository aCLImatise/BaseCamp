class: CommandLineTool
id: gcloud_projects_get_iam_policy.cwl
inputs:
- id: in_filter
  doc: "Apply a Boolean filter EXPRESSION to each resource item to be listed.\nIf\
    \ the expression evaluates True then that item is listed. For more\ndetails and\
    \ examples of filter expressions run $ gcloud topic filters.\nThis flag interacts\
    \ with other flags that are applied in this order:\n--flatten, --sort-by, --filter,\
    \ --limit."
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_limit
  doc: "The maximum number of resources to list. The default is unlimited. This\n\
    flag interacts with other flags that are applied in this order:\n--flatten, --sort-by,\
    \ --filter, --limit."
  type: long
  inputBinding:
    prefix: --limit
- id: in_page_size
  doc: "Some services group resource list output into pages. This flag\nspecifies\
    \ the maximum number of resources per page. The default is\ndetermined by the\
    \ service if it supports paging, otherwise it is\nunlimited (no paging). Paging\
    \ may be applied before or after --filter\nand --limit depending on the service."
  type: long
  inputBinding:
    prefix: --page-size
- id: in_sort_by
  doc: "=[FIELD,...]\nA comma-separated list of resource field key names to sort by.\
    \ The\ndefault order is ascending. Prefix a field with ``~'' for descending\n\
    order on that field. This flag interacts with other flags that are\napplied in\
    \ this order: --flatten, --sort-by, --filter, --limit."
  type: boolean
  inputBinding:
    prefix: --sort-by
- id: in_project_id
  doc: ID for the project you want to get IAM policy for.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- projects
- get-iam-policy
