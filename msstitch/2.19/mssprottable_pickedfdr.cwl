class: CommandLineTool
id: mssprottable_pickedfdr.cwl
inputs:
- id: i
  doc: Input file of protein table format
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: decoy_fn
  doc: Decoy input file (percolator out XML) for qvality
  type: string
  inputBinding:
    prefix: --decoyfn
- id: target_fast_a
  doc: FASTA file with target proteins to determine best scoring proteins of target/decoy
    pairs for pickqvality. In case using --picktype fasta
  type: string
  inputBinding:
    prefix: --targetfasta
- id: decoy_fast_a
  doc: FASTA file with decoy proteins to determine best scoring proteins of target/decoy
    pairs for pickqvality. In case using --picktype fasta
  type: string
  inputBinding:
    prefix: --decoyfasta
- id: pick_type
  doc: Feature type to use for qvality. Can be one of [fasta, result].
  type: string
  inputBinding:
    prefix: --picktype
- id: gene_field
  doc: Field nr (first=1) in FASTA that contains gene name when using --fastadelim
    to parse the gene names
  type: string
  inputBinding:
    prefix: --genefield
- id: fast_a_delim
  doc: Delimiter in FASTA header, used to parse gene names in case of non-ENSEMBL/Uniprot
  type: string
  inputBinding:
    prefix: --fastadelim
outputs: []
cwlVersion: v1.1
baseCommand:
- mssprottable
- pickedfdr
