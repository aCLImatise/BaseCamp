class: CommandLineTool
id: covid_spike_classification.cwl
inputs:
- id: in_reference
  doc: "Reference FASTA file to use (default:\n/ref/NC_045512.fasta)."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_input_format
  doc: "Select which input format to expect. Choices: ab1,\nfasta, fastq. default:\
    \ ab1"
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_outdir
  doc: "File to write result CSV and fastq files to (default:\n2021-05-03)."
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_quiet
  doc: Suppress noisy output from the tools run
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_stdout
  doc: Print results to stdout in addition to writing them to
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_silence_warnings
  doc: Silence D614G warnings.
  type: boolean?
  inputBinding:
    prefix: --silence-warnings
- id: in_zip_results
  doc: "Create a zipfile from the output directory instead of\nthe output directory.\n"
  type: Directory?
  inputBinding:
    prefix: --zip-results
- id: in_disk
  doc: '-d, --debug           Debug mode: Keep bam file around when the parsing'
  type: string
  inputBinding:
    position: 0
- id: in_crashes
  doc: --show-unexpected     Show unexpected mutations instead of reporting 'no
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_zip_results
  doc: "Create a zipfile from the output directory instead of\nthe output directory.\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_zip_results)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/covid-spike-classification:0.5.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- covid-spike-classification
