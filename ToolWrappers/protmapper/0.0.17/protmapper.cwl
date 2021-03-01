class: CommandLineTool
id: protmapper.cwl
inputs:
- id: in_peptide
  doc: "If given, the third element of each row of the input\nfile is a peptide (amino\
    \ acid sequence) rather than a\nsingle amino acid residue. In this case, peptide-\n\
    oriented mappings are applied. In this mode the\nfollowing boolean arguments are\
    \ ignored."
  type: boolean?
  inputBinding:
    prefix: --peptide
- id: in_no_methionine_offset
  doc: "If given, will not check for off-by-one errors in site\nposition (possibly)\
    \ attributable to site numbering\nfrom mature proteins after cleavage of the initial\n\
    methionine."
  type: boolean?
  inputBinding:
    prefix: --no_methionine_offset
- id: in_no_orthology_mapping
  doc: "If given, will not check sequence positions for known\nmodification sites\
    \ in mouse or rat sequences (based on\nPhosphoSitePlus data)."
  type: boolean?
  inputBinding:
    prefix: --no_orthology_mapping
- id: in_no_isoform_mapping
  doc: "If given, will not check sequence positions for known\nmodifications in other\
    \ human isoforms of the protein\n(based on PhosphoSitePlus data).\n"
  type: boolean?
  inputBinding:
    prefix: --no_isoform_mapping
- id: in_input
  doc: "Path to an input file. The input file is a text file\nin which each row consists\
    \ of four comma separated\nvalues, with the first element being a protein ID,\
    \ the\nsecond, the namespace in which that ID is valid\n(uniprot or hgnc),third,\
    \ an amino acid represented as\na single capital letter, and fourth, a site position\n\
    on the protein."
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: "Path to the output file to be generated. Each line of\nthe output file corresponds\
    \ to a line in the input\nfile. Each linerepresents a mapped site produced by\n\
    Protmapper."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- protmapper
