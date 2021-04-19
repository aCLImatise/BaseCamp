class: CommandLineTool
id: fba_kallisto_wrapper.cwl
inputs:
- id: in_read_one
  doc: specify fastq file for read 1
  type: long?
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: specify fastq file for read 2
  type: long?
  inputBinding:
    prefix: --read2
- id: in_whitelist
  doc: specify a whitelist of accepted cell barcodes
  type: string?
  inputBinding:
    prefix: --whitelist
- id: in_feature_ref
  doc: specify a reference of feature barcodes
  type: string?
  inputBinding:
    prefix: --feature_ref
- id: in_technology
  doc: "specify feature barcoding technology. The default is\n10xv3"
  type: long?
  inputBinding:
    prefix: --technology
- id: in_output
  doc: specify an output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: "specify number of kallisto/bustools threads to launch.\nDefault (1)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output_directory
  doc: "specify a temp directory. Default (./kallisto)\n"
  type: Directory?
  inputBinding:
    prefix: --output_directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: specify an output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_directory
  doc: "specify a temp directory. Default (./kallisto)\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- fba
- kallisto_wrapper
