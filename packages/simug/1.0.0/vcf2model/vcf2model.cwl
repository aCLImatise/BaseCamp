class: CommandLineTool
id: vcf2model.cwl
inputs:
- id: in_man
  doc: 'Print more detailed help message. Example: -m.'
  type: string?
  inputBinding:
    prefix: -man
- id: in_version
  doc: 'Print version information. Example: -v.'
  type: string?
  inputBinding:
    prefix: -version
- id: in_vcf
  doc: "Specify the input variant calling file (in vcf or vcf.gz\nformat). Example:\
    \ -vcf input.vcf(.gz)."
  type: File?
  inputBinding:
    prefix: -vcf
- id: in_excluded_chr_list
  doc: "Specify the chromosome(s) to be excluded for variant profiling.\nExample:\
    \ -excluded_chr_list excluded_chr_list.txt. Default = \"\"."
  type: string?
  inputBinding:
    prefix: -excluded_chr_list
- id: in_qual
  doc: "Specify the cutoff of the minimal variant quality to be\nconsidered. Example:\
    \ -qual 30. Default = 0."
  type: long?
  inputBinding:
    prefix: -qual
- id: in_prefix
  doc: "Specify the file name prefix for the output files. Example:\n-prefix test_prefix.\
    \ Default = \"output_prefix\".\n"
  type: File?
  inputBinding:
    prefix: -prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: "Specify the file name prefix for the output files. Example:\n-prefix test_prefix.\
    \ Default = \"output_prefix\".\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/simug:1.0.0--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- vcf2model
