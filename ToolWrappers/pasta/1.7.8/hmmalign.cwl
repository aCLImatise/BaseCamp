class: CommandLineTool
id: ../../../hmmalign.cwl
inputs:
- id: in_output_alignment_file
  doc: ': output alignment to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_map_ali
  doc: ': include alignment in file <f> (same ali that HMM came from)'
  type: File
  inputBinding:
    prefix: --mapali
- id: in_trim
  doc: ': trim terminal tails of nonaligned residues from alignment'
  type: boolean
  inputBinding:
    prefix: --trim
- id: in_amino
  doc: ': assert <seqfile>, <hmmfile> both protein: no autodetection'
  type: boolean
  inputBinding:
    prefix: --amino
- id: in_dna
  doc: ': assert <seqfile>, <hmmfile> both DNA: no autodetection'
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_rna
  doc: ': assert <seqfile>, <hmmfile> both RNA: no autodetection'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_in_format
  doc: ': assert <seqfile> is in format <s>: no autodetection'
  type: string
  inputBinding:
    prefix: --informat
- id: in_out_format
  doc: ': output alignment in format <s>  [Stockholm]'
  type: string
  inputBinding:
    prefix: --outformat
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_alignment_file
  doc: ': output alignment to file <f>, not stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_output_alignment_file)
cwlVersion: v1.1
baseCommand:
- hmmalign
