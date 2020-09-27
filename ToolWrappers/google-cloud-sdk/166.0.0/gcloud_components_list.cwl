class: CommandLineTool
id: gcloud_components_list.cwl
inputs:
- id: in_show_versions
  doc: Show installed and available versions of all components.
  type: boolean
  inputBinding:
    prefix: --show-versions
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
- id: in_sort_by
  doc: "=[FIELD,...]\nA comma-separated list of resource field key names to sort by.\
    \ The\ndefault order is ascending. Prefix a field with ``~'' for descending\n\
    order on that field. This flag interacts with other flags that are\napplied in\
    \ this order: --flatten, --sort-by, --filter, --limit."
  type: boolean
  inputBinding:
    prefix: --sort-by
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- components
- list
