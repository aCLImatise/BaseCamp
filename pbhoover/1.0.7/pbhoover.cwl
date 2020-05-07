class: CommandLineTool
id: pbhoover.cwl
inputs:
- id: consensus
  doc: Call consensus (output all positions to VCF)
  type: boolean
  inputBinding:
    prefix: --consensus
- id: input
  doc: Input cmp.h5 file
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output VCF file name, stdout by default
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: Reference FASTA file for indel normalization
  type: string
  inputBinding:
    prefix: --reference
- id: nproc
  doc: number of processors to be used, uses all available by default
  type: string
  inputBinding:
    prefix: --nproc
- id: chunksize
  doc: Genome chunk size used for parallelizaton, 5000 by default
  type: string
  inputBinding:
    prefix: --chunksize
- id: tempdir
  doc: Temporary directory for analysis. Current directory is default
  type: string
  inputBinding:
    prefix: --tempdir
- id: debug
  doc: Flag for debugging purposes. Writes more information to log
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- pbhoover
