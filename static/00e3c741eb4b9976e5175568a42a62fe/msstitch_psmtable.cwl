class: CommandLineTool
id: ../../../msstitch_psmtable.cwl
inputs:
- id: input_file_format
  doc: Input file of {} format
  type: string
  inputBinding:
    prefix: -i
- id: directory_to_output
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: ms_one_quant
  doc: Specifies to add precursor quant data from lookup DB to output table
  type: boolean
  inputBinding:
    prefix: --ms1quant
- id: isobaric
  doc: Specifies to add isobaric quant data from lookup DB to output table
  type: boolean
  inputBinding:
    prefix: --isobaric
- id: unroll
  doc: PSM table from Mzid2TSV contains either one PSM per line with all the proteins
    of that shared peptide on the same line (not unrolled, default), or one PSM/protein
    match per line where each protein from that shared peptide gets its own line (unrolled).
  type: boolean
  inputBinding:
    prefix: --unroll
- id: spectra_col
  doc: Column number in which spectra file names are, in case some framework has changed
    the file names. First column number is 1.
  type: string
  inputBinding:
    prefix: --spectracol
- id: add_bio_set
  doc: Add biological setname from DB lookup to PSM table
  type: boolean
  inputBinding:
    prefix: --addbioset
- id: add_misc_leav
  doc: Add missed cleavages to PSM table
  type: boolean
  inputBinding:
    prefix: --addmiscleav
- id: genes
  doc: Specifies to add genes to PSM table
  type: boolean
  inputBinding:
    prefix: --genes
- id: protein_group
  doc: Specifies to add protein groups to PSM table
  type: boolean
  inputBinding:
    prefix: --proteingroup
- id: fast_a
  doc: FASTA sequence database
  type: string
  inputBinding:
    prefix: --fasta
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
- msstitch
- psmtable
