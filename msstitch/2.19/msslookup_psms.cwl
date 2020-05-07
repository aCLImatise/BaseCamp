class: CommandLineTool
id: msslookup_psms.cwl
inputs:
- id: i
  doc: Input file of TSV PSM table (MSGF+) format
  type: string
  inputBinding:
    prefix: -i
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: spectra_col
  doc: Column number in which spectra file names are, in case some framework has changed
    the file names. First column number is 1.
  type: string
  inputBinding:
    prefix: --spectracol
- id: map
  doc: File that contains a map obtained from ENSEMBL BioMart which should contain
    mappings from protein accession to Gene ENSG and Symbol.
  type: string
  inputBinding:
    prefix: --map
- id: decoy
  doc: Specifies lookup is for decoy PSMs, use with --map in case there are no decoy
    symbols in the FASTA used to search.
  type: boolean
  inputBinding:
    prefix: --decoy
- id: fast_a
  doc: FASTA sequence database to use when extracting gene names to the PSM table
    from proteins
  type: string
  inputBinding:
    prefix: --fasta
- id: unroll
  doc: PSM table from Mzid2TSV contains either one PSM per line with all the proteins
    of that shared peptide on the same line (not unrolled, default), or one PSM/protein
    match per line where each protein from that shared peptide gets its own line (unrolled).
  type: boolean
  inputBinding:
    prefix: --unroll
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
- msslookup
- psms
