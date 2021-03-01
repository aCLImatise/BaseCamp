class: CommandLineTool
id: proteinortho_grab_proteins.pl.cwl
inputs:
- id: in_to_files
  doc: print everything to files instead of stdout files are called OrthoGroup**.fasta
    for a proteinortho.tsv file
  type: boolean?
  inputBinding:
    prefix: -tofiles
- id: in_enables_regex_matching
  doc: enables regex matching otherwise the string is escaped (e.g. | -> \|)
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_exact
  doc: search patters are extended with a \b, that indicates end of word.
  type: boolean?
  inputBinding:
    prefix: -exact
- id: in_source
  doc: adds the filename (FASTA1,...) to the found gene-name
  type: boolean?
  inputBinding:
    prefix: -source
- id: in_char_delimiter_is
  doc: "char delimiter for multiple identifier if QUERY is a string input (default:\
    \ ',')"
  type: string?
  inputBinding:
    prefix: -F
- id: in_query
  doc: "proteinortho.tsv FILE or search STRING or '-' for STDIN:\na)      proteinortho\
    \ output file (.tsv). This uses by default the -exact option.\nb)      string\
    \ of one identifier e.g. 'tr|asd3|asd' OR multiple identifier separated by ','\
    \ (-F=)"
  type: string
  inputBinding:
    position: 0
- id: in_mnnggptemyyqqhmqsagqpqqp_qtvtsgpmshyppaqppllqpgqp_yshgapspyqyg
  doc: '>BDNF15 Brain derived neurotrophic factor OS=human(...)'
  type: string
  inputBinding:
    position: 0
- id: in_mafplhfsrepahaipsmkapfsr_hevpfgrspsmaipnsethddvpp_plppprhppctn
  doc: "The second hit BDNF15 is reported since it also contains 'BDNF1' as a substring. "
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
- proteinortho_grab_proteins.pl
