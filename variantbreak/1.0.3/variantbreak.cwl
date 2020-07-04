class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/variantbreak.cwl
inputs:
- id: annotation_file_dir
  doc: 'path to single annotation file or directory containing annotation  files of
    GTF/GFF or BED formats. Formats: .gtf/.gff/.gff3/.bed'
  type: File
  inputBinding:
    prefix: --annotation_file_dir
- id: filter_file_dir
  doc: 'path to single filter file or directory containing filter files of  BED format.
    Format: .bed'
  type: File
  inputBinding:
    prefix: --filter_file_dir
- id: del_annotate_size
  doc: Deletions with sizes lower or equal to this value will have the  entire deleted
    region annotated. Any genes that intersect with  the deleted region will be included
    as annotation. On the contrary,  if deletion size is greater than this value,
    only the deletion  breakends will be annotated, omitting any annotation of the
    middle  deleted region. In other words, only genes intersecting with the  deletion
    breakends will be included as annotation. This is done to  reduce false annotations
    due to false large deletions. Note that  the value to be set is an absolute deletion
    size, do not use minus  '-'. Use value '-1' to disable this threshold and annotate
    all  deleted regions despite of size. [20000]
  type: long
  inputBinding:
    prefix: --del_annotate_size
- id: merge_buffer
  doc: nucleotide length buffer for SV breakend clustering [400]
  type: long
  inputBinding:
    prefix: --merge_buffer
- id: promoter_size
  doc: length in base-pairs upstream of TSS to define promoter region  [1000]
  type: long
  inputBinding:
    prefix: --promoter_size
- id: max_annotation
  doc: maximum number of annotation entries to be recorded in the  dataframe for each
    SV [3]]
  type: long
  inputBinding:
    prefix: --max_annotation
- id: cluster_sample
  doc: performs hierarchical clustering on samples
  type: boolean
  inputBinding:
    prefix: --cluster_sample
- id: auto_filter
  doc: automatically removes variants that intersected with all filter BED files
  type: boolean
  inputBinding:
    prefix: --auto_filter
- id: sep
  doc: single character field delimiter for output dataframe CSV file  (e.g. '\t'
    for tab or ',' for comma) [,]
  type: string
  inputBinding:
    prefix: --sep
- id: filename
  doc: File name prefix of output files [output]
  type: string
  inputBinding:
    prefix: --filename
- id: quiet
  doc: hide verbose
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- variantbreak
