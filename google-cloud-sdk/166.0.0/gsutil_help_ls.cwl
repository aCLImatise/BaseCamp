class: CommandLineTool
id: gsutil_help_ls.cwl
inputs:
- id: l
  doc: Prints long listing (owner, length).
  type: boolean
  inputBinding:
    prefix: -l
- id: l
  doc: 'Prints even more detail than -l.  Note: If you use this option with the (non-default)
    XML API it will generate an additional request per object being listed, which
    makes the -L option run much more slowly (and cost more) using the XML API than
    the default JSON API.'
  type: boolean
  inputBinding:
    prefix: -L
- id: d
  doc: List matching subdirectory names instead of contents, and do not recurse into
    matching subdirectories even if the -R option is specified.
  type: boolean
  inputBinding:
    prefix: -d
- id: b
  doc: Prints info about the bucket when used with a bucket URL.
  type: boolean
  inputBinding:
    prefix: -b
- id: p
  doc: Specifies the project ID to use for listing buckets.
  type: string
  inputBinding:
    prefix: -p
- id: r
  doc: Requests a recursive listing, performing at least one listing operation per
    subdirectory. If you have a large number of subdirectories and do not require
    recursive-style output ordering, you may be able to instead use wildcards to perform
    a flat listing, e.g.  `gsutil ls gs://mybucket/**`, which will generally perform
    fewer listing operations.
  type: boolean
  inputBinding:
    prefix: -R
- id: a
  doc: Includes non-current object versions / generations in the listing (only useful
    with a versioning-enabled bucket). If combined with -l option also prints metageneration
    for each listed object.
  type: boolean
  inputBinding:
    prefix: -a
- id: e
  doc: Include ETag in long listing (-l) output.
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- help
- ls
