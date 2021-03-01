class: CommandLineTool
id: msstitch_psmtable.cwl
inputs:
- id: in_input_file_format
  doc: Input file of {} format
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_dbfile
  doc: Database lookup file
  type: File?
  inputBinding:
    prefix: --dbfile
- id: in_ms_one_quant
  doc: "Specifies to add precursor quant data from lookup DB\nto output table"
  type: boolean?
  inputBinding:
    prefix: --ms1quant
- id: in_isobaric
  doc: "Specifies to add isobaric quant data from lookup DB to\noutput table"
  type: boolean?
  inputBinding:
    prefix: --isobaric
- id: in_unroll
  doc: "PSM table from Mzid2TSV contains either one PSM per\nline with all the proteins\
    \ of that shared peptide on\nthe same line (not unrolled, default), or one\nPSM/protein\
    \ match per line where each protein from\nthat shared peptide gets its own line\
    \ (unrolled)."
  type: boolean?
  inputBinding:
    prefix: --unroll
- id: in_spectra_col
  doc: "Column number in which spectra file names are, in case\nsome framework has\
    \ changed the file names. First\ncolumn number is 1."
  type: long?
  inputBinding:
    prefix: --spectracol
- id: in_add_bio_set
  doc: Add biological setname from DB lookup to PSM table
  type: boolean?
  inputBinding:
    prefix: --addbioset
- id: in_add_misc_leav
  doc: Add missed cleavages to PSM table
  type: boolean?
  inputBinding:
    prefix: --addmiscleav
- id: in_genes
  doc: Specifies to add genes to PSM table
  type: boolean?
  inputBinding:
    prefix: --genes
- id: in_protein_group
  doc: Specifies to add protein groups to PSM table
  type: boolean?
  inputBinding:
    prefix: --proteingroup
- id: in_fast_a
  doc: FASTA sequence database
  type: string?
  inputBinding:
    prefix: --fasta
- id: in_gene_field
  doc: "Field nr (first=1) in FASTA that contains gene name\nwhen using --fastadelim\
    \ to parse the gene names"
  type: long?
  inputBinding:
    prefix: --genefield
- id: in_fast_a_delim
  doc: "Delimiter in FASTA header, used to parse gene names in\ncase of non-ENSEMBL/Uniprot\n"
  type: string?
  inputBinding:
    prefix: --fastadelim
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- msstitch
- psmtable
