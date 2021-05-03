class: CommandLineTool
id: figaro.py.cwl
inputs:
- id: in_output_directory
  doc: Directory for outputs
  type: Directory?
  inputBinding:
    prefix: --outputDirectory
- id: in_amplicon_length
  doc: Length of amplicon (not including primers)
  type: long?
  inputBinding:
    prefix: --ampliconLength
- id: in_forward_primer_length
  doc: Length of forward primer
  type: long?
  inputBinding:
    prefix: --forwardPrimerLength
- id: in_reverse_primer_length
  doc: Length of reverse primer
  type: long?
  inputBinding:
    prefix: --reversePrimerLength
- id: in_input_directory
  doc: Directory with Fastq files to analyze
  type: Directory?
  inputBinding:
    prefix: --inputDirectory
- id: in_output_file_name
  doc: Output file for trim site JSON
  type: File?
  inputBinding:
    prefix: --outputFileName
- id: in_minimum_overlap
  doc: Minimum overlap between the paired-end reads
  type: string?
  inputBinding:
    prefix: --minimumOverlap
- id: in_subsample
  doc: "Subsampling level (will analyze approximately 1/x\nreads"
  type: long?
  inputBinding:
    prefix: --subsample
- id: in_percentile
  doc: Percentile to use for expected error model
  type: string?
  inputBinding:
    prefix: --percentile
- id: in_file_naming_standard
  doc: File naming standard to use
  type: File?
  inputBinding:
    prefix: --fileNamingStandard
- id: in_log_file
  doc: "Log file path\n"
  type: File?
  inputBinding:
    prefix: --logFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Directory for outputs
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_output_file_name
  doc: Output file for trim site JSON
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/figaro:1.1.2--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- figaro.py
