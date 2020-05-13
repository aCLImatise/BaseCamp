class: CommandLineTool
id: validate_demultiplexed_fasta.py.cwl
inputs:
- id: mapping_fp
  doc: 'name of mapping file. NOTE: Must contain a header line indicating SampleID
    in the first column and BarcodeSequence in the second, LinkerPrimerSequence in
    the third.  If no barcode or  linkerprimer sequence is present, leave data fields
    empty. [REQUIRED]'
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: input_fast_a_fp
  doc: path to the input fasta file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- validate_demultiplexed_fasta.py
