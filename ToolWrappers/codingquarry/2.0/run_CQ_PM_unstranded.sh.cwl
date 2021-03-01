class: CommandLineTool
id: run_CQ_PM_unstranded.sh.cwl
inputs:
- id: in_file_name_genome
  doc: by file name of genome sequence
  type: File?
  inputBinding:
    prefix: -f
- id: in_file_aligned_recommended
  doc: file of aligned transcripts (recommended)
  type: long?
  inputBinding:
    prefix: -t
- id: in_name_providing_parameters
  doc: name, providing pre-trained parameters exist
  type: string?
  inputBinding:
    prefix: -s
- id: in_high_confidence_genes
  doc: of high confidence genes that can be used for training
  type: long?
  inputBinding:
    prefix: -a
- id: in_of_threads_default
  doc: of threads (default is 1)
  type: long?
  inputBinding:
    prefix: -p
- id: in_when_using_rnaseq
  doc: "this when using un-stranded RNA-seq. By default,\nCodingQuarry expects stranded\
    \ RNA-seq"
  type: string?
  inputBinding:
    prefix: -d
- id: in_stage_see_manual
  doc: after stage 1 (see manual)
  type: long?
  inputBinding:
    prefix: -i
- id: in_file_aligned_est
  doc: file of aligned EST data
  type: long?
  inputBinding:
    prefix: -e
- id: in_predict_genes_is
  doc: not predict genes in soft-masked regions (that is, hard-mask these regions)
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_CQ-PM_unstranded.sh
