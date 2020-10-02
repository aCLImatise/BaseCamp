class: CommandLineTool
id: gsutil_ls.cwl
inputs:
- id: in_prints_long_listing
  doc: Prints long listing (owner, length).
  type: boolean
  inputBinding:
    prefix: -l
- id: in_prints_more_detail
  doc: "Prints even more detail than -l.  Note: If you use this option\nwith the (non-default)\
    \ XML API it will generate an additional\nrequest per object being listed, which\
    \ makes the -L option run\nmuch more slowly (and cost more) using the XML API\
    \ than the\ndefault JSON API."
  type: boolean
  inputBinding:
    prefix: -L
- id: in_list_matching_names
  doc: "List matching subdirectory names instead of contents, and do not\nrecurse\
    \ into matching subdirectories even if the -R option is\nspecified."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_prints_info_used
  doc: Prints info about the bucket when used with a bucket URL.
  type: boolean
  inputBinding:
    prefix: -b
- id: in_specifies_project_id
  doc: Specifies the project ID to use for listing buckets.
  type: string
  inputBinding:
    prefix: -p
- id: in_requests_recursive_listing
  doc: "Requests a recursive listing, performing at least one listing\noperation per\
    \ subdirectory. If you have a large number of\nsubdirectories and do not require\
    \ recursive-style output ordering,\nyou may be able to instead use wildcards to\
    \ perform a flat\nlisting, e.g.  `gsutil ls gs://mybucket/**`, which will generally\n\
    perform fewer listing operations."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_includes_object_versions
  doc: "Includes non-current object versions / generations in the listing\n(only useful\
    \ with a versioning-enabled bucket). If combined with\n-l option also prints metageneration\
    \ for each listed object."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_include_etag_long
  doc: Include ETag in long listing (-l) output.
  type: boolean
  inputBinding:
    prefix: -e
- id: in_two_two_seven_six_two_two_four
  doc: 2012-03-02T19:25:17Z  gs://bucket/obj1
  type: long
  inputBinding:
    position: 0
- id: in_three_nine_one_four_six_two_four
  doc: 2012-03-02T19:30:27Z  gs://bucket/obj2
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- ls
