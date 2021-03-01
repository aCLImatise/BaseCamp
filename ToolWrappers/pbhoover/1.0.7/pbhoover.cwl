class: CommandLineTool
id: pbhoover.cwl
inputs:
- id: in_consensus
  doc: Call consensus (output all positions to VCF)
  type: boolean?
  inputBinding:
    prefix: --consensus
- id: in_input
  doc: Input cmp.h5 file
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output VCF file name, stdout by default
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: Reference FASTA file for indel normalization
  type: File?
  inputBinding:
    prefix: --reference
- id: in_nproc
  doc: "number of processors to be used, uses all available by\ndefault"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_chunksize
  doc: "Genome chunk size used for parallelizaton, 5000 by\ndefault"
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_tempdir
  doc: "Temporary directory for analysis. Current directory is\ndefault"
  type: Directory?
  inputBinding:
    prefix: --tempdir
- id: in_debug
  doc: "Flag for debugging purposes. Writes more information\nto log\n"
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output VCF file name, stdout by default
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pbhoover
