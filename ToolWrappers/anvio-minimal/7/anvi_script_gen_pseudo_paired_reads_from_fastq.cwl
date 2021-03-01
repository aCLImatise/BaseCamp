class: CommandLineTool
id: anvi_script_gen_pseudo_paired_reads_from_fastq.cwl
inputs:
- id: in_output_file_prefix
  doc: "If you want final FASTQs with the format\nmyfastq_1.fastq and myfastq_2.fastq,\
    \ then this\nparameter should be set to myfastq (default: None)"
  type: File?
  inputBinding:
    prefix: --output-file-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: "If you want final FASTQs with the format\nmyfastq_1.fastq and myfastq_2.fastq,\
    \ then this\nparameter should be set to myfastq (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-pseudo-paired-reads-from-fastq
