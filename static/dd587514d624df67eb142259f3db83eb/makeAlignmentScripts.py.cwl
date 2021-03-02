class: CommandLineTool
id: makeAlignmentScripts.py.cwl
inputs:
- id: in_var_0
  doc: '[-nt THREADS]'
  type: string?
  inputBinding:
    prefix: -outbam
- id: in_output_directory
  doc: 'input bam path if already aligned (default: None)'
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_output_bam_file
  doc: 'output bam file name (default: None)'
  type: File?
  inputBinding:
    prefix: --out-bam
- id: in_genome_reference
  doc: "[IN_FASTQ1S [IN_FASTQ1S ...]], --in-fastq1s [IN_FASTQ1S [IN_FASTQ1S ...]]\n\
    paths of forward reads (default: None)"
  type: long?
  inputBinding:
    prefix: --genome-reference
- id: in_fq_two
  doc: "[IN_FASTQ2S [IN_FASTQ2S ...]], --in-fastq2s [IN_FASTQ2S [IN_FASTQ2S ...]]\n\
    paths of reverse reads in paired-end sequencing\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: -fq2
- id: in_out_fast_q_one_name
  doc: 'file name of forward reads (default: None)'
  type: long?
  inputBinding:
    prefix: --out-fastq1-name
- id: in_out_fast_q_two_name
  doc: 'file name of reverse reads (default: None)'
  type: long?
  inputBinding:
    prefix: --out-fastq2-name
- id: in_extra_trim_arguments
  doc: "split input fastq files before trimming to maximize\nmulti-threading efficiency\
    \ in trimming. (default:\nFalse)"
  type: string?
  inputBinding:
    prefix: --extra-trim-arguments
- id: in_extra_mark_dup_arguments
  doc: 'place holder for now (default: )'
  type: string?
  inputBinding:
    prefix: --extra-markdup-arguments
- id: in_parallelize_mark_dup
  doc: "parallelize by splitting input bam files and work on\neach independently,\
    \ and then merge. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --parallelize-markdup
- id: in_run_workflow
  doc: "Execute the bash scripts locally right here. Only\nworks on Linux machines\
    \ with modern bash shells.\n(default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --run-workflow
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: 'input bam path if already aligned (default: None)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_output_bam_file
  doc: 'output bam file name (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bam_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/somaticseq:3.6.2--py_0
cwlVersion: v1.1
baseCommand:
- makeAlignmentScripts.py
