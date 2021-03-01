class: CommandLineTool
id: variantbreak.cwl
inputs:
- id: in_annotation_file_dir
  doc: "path to single annotation file or directory containing annotation\nfiles of\
    \ GTF/GFF or BED formats. Formats: .gtf/.gff/.gff3/.bed"
  type: File?
  inputBinding:
    prefix: --annotation_file_dir
- id: in_filter_file_dir
  doc: "path to single filter file or directory containing filter files of\nBED format.\
    \ Format: .bed"
  type: File?
  inputBinding:
    prefix: --filter_file_dir
- id: in_del_annotate_size
  doc: "Deletions with sizes lower or equal to this value will have the\nentire deleted\
    \ region annotated. Any genes that intersect with\nthe deleted region will be\
    \ included as annotation. On the contrary,\nif deletion size is greater than this\
    \ value, only the deletion\nbreakends will be annotated, omitting any annotation\
    \ of the middle\ndeleted region. In other words, only genes intersecting with\
    \ the\ndeletion breakends will be included as annotation. This is done to\nreduce\
    \ false annotations due to false large deletions. Note that\nthe value to be set\
    \ is an absolute deletion size, do not use minus\n'-'. Use value '-1' to disable\
    \ this threshold and annotate all\ndeleted regions despite of size. [20000]"
  type: long?
  inputBinding:
    prefix: --del_annotate_size
- id: in_merge_buffer
  doc: nucleotide length buffer for SV breakend clustering [400]
  type: long?
  inputBinding:
    prefix: --merge_buffer
- id: in_promoter_size
  doc: "length in base-pairs upstream of TSS to define promoter region\n[1000]"
  type: long?
  inputBinding:
    prefix: --promoter_size
- id: in_max_annotation
  doc: "maximum number of annotation entries to be recorded in the\ndataframe for\
    \ each SV [3]"
  type: long?
  inputBinding:
    prefix: --max_annotation
- id: in_cluster_sample
  doc: performs hierarchical clustering on samples
  type: boolean?
  inputBinding:
    prefix: --cluster_sample
- id: in_auto_filter
  doc: "automatically removes variants that intersected\nwith all filter BED files"
  type: boolean?
  inputBinding:
    prefix: --auto_filter
- id: in_sep
  doc: "single character field delimiter for output dataframe CSV file\n(e.g. '\\\
    t' for tab or ',' for comma) [,]"
  type: File?
  inputBinding:
    prefix: --sep
- id: in_filename
  doc: File name prefix of output files [output]
  type: File?
  inputBinding:
    prefix: --filename
- id: in_quiet
  doc: hide verbose
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_exist_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sep
  doc: "single character field delimiter for output dataframe CSV file\n(e.g. '\\\
    t' for tab or ',' for comma) [,]"
  type: File?
  outputBinding:
    glob: $(inputs.in_sep)
- id: out_filename
  doc: File name prefix of output files [output]
  type: File?
  outputBinding:
    glob: $(inputs.in_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/variantbreak:1.0.4--py_0
cwlVersion: v1.1
baseCommand:
- variantbreak
