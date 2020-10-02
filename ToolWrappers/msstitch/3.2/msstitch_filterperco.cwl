class: CommandLineTool
id: msstitch_filterperco.cwl
inputs:
- id: in_input_file_format
  doc: Input file of {} format
  type: File
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File
  inputBinding:
    prefix: -o
- id: in_full_protein
  doc: "Store full protein sequences (at a minimum-match\nlength) in the SQLite file\
    \ rather than tryptic\nsequences"
  type: boolean
  inputBinding:
    prefix: --fullprotein
- id: in_de_ami_date
  doc: "Filter against both normal peptides and deamidated\npeptides where a D->N\
    \ transition has occurred."
  type: boolean
  inputBinding:
    prefix: --deamidate
- id: in_fast_a
  doc: FASTA sequence database
  type: string
  inputBinding:
    prefix: --fasta
- id: in_min_len
  doc: Minimum length of peptide to be included
  type: long
  inputBinding:
    prefix: --minlen
- id: in_dbfile
  doc: Database lookup file
  type: File
  inputBinding:
    prefix: --dbfile
- id: in_enforce_tryptic
  doc: "When filtering peptides against whole proteins, filter\nout peptides that\
    \ match a whole protein but only if\nthey are fully tryptic, i.e. the protein\
    \ needs K,R 1\nposition upstream of the peptide, and the peptide\nC-terminal should\
    \ also be K,R. Useful when discerning\nfrom pseudogenes"
  type: boolean
  inputBinding:
    prefix: --enforce-tryptic
- id: in_in_source_frag
  doc: "Apply filter against both intact peptides and those\nthat match to the C-terminal\
    \ part of a tryptic peptide\nfrom the database, resulting from in-source\nfragmentation,\
    \ where some amino acids will be missing\nfrom the N-terminus. Specify the max\
    \ number of amino\nacids that may be missing. Database should be built\nwith this\
    \ flag in order for the lookup to work, since\nsequences will be stored and looked\
    \ up reversed\n"
  type: long
  inputBinding:
    prefix: --insourcefrag
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- msstitch
- filterperco
