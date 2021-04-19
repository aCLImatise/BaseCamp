class: CommandLineTool
id: proteinortho_grab_proteins.pl.cwl
inputs:
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
- id: in_cpus
  doc: "the number of parallel open files for reading, this is strictly limited by\
    \ the I/O bandwith (default:1).\nfor fast SSD drives, you can increase this to\
    \ gain speed."
  type: long?
  inputBinding:
    prefix: -cpus
- id: in_min_prot
  doc: if you give a proteinortho.tsv file, this filters out groups with less than
    X proteins (default:0).
  type: File?
  inputBinding:
    prefix: -minprot
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
- id: in_isoform
  doc: if you use proteinortho with --isoform option, then you need to set this option
    here too.
  type: boolean?
  inputBinding:
    prefix: -isoform
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
- id: out_min_prot
  doc: if you give a proteinortho.tsv file, this filters out groups with less than
    X proteins (default:0).
  type: File?
  outputBinding:
    glob: $(inputs.in_min_prot)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteinortho:6.0.30--hb0e25da_0
cwlVersion: v1.1
baseCommand:
- proteinortho_grab_proteins.pl
