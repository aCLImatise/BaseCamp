class: CommandLineTool
id: genePredToProt.cwl
inputs:
- id: in_cds_fa
  doc: "- output FASTA with CDS that was used to generate protein.\nThis will not\
    \ include dropped partial codons."
  type: string
  inputBinding:
    prefix: -cdsFa
- id: in_protid_suffix
  doc: '- add this string to the end of the name for protein FASTA'
  type: string
  inputBinding:
    prefix: -protIdSuffix
- id: in_cds_id_suffix
  doc: '- add this string to the end of the name for CDS FASTA'
  type: string
  inputBinding:
    prefix: -cdsIdSuffix
- id: in_translates_ele_no
  doc: "- assume internal TGA code for selenocysteine and translate to `U'."
  type: boolean
  inputBinding:
    prefix: -translateSeleno
- id: in_includes_top
  doc: "- If the CDS ends with a stop codon, represent it as a `*'"
  type: boolean
  inputBinding:
    prefix: -includeStop
- id: in_star_for_in_frames_tops
  doc: "- use `*' instead of `X' for in-frame stop codons.\nThis will result in selenocysteine's\
    \ being `*', with only codons\ncontaining `N' being translated to `X'.  This doesn't\
    \ include terminal\nstop\n"
  type: boolean
  inputBinding:
    prefix: -starForInframeStops
- id: in_gene_pred_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome_seqs
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genePredToProt
