class: CommandLineTool
id: loadPromoters.pl.cwl
inputs:
- id: in_name
  doc: (used to refer to it later with findMotifs.pl)
  type: string?
  inputBinding:
    prefix: -name
- id: in_org
  doc: (Name of organism, ok to set to 'null' if not in HOMER)
  type: string?
  inputBinding:
    prefix: -org
- id: in_id
  doc: '(specify one: gene, refseq, unigene, ensembl or custom)'
  type: string?
  inputBinding:
    prefix: -id
- id: in_force
  doc: (Overwrite existing promoter set definition)
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_keep_acc_ver
  doc: "(By default, promoter IDs with an accession version number will be\ntrimmed\
    \ off - i.e. NM_012345.2 -> NM_012345 - use this flag keep the .#)"
  type: boolean?
  inputBinding:
    prefix: -keepAccVer
- id: in_version
  doc: "<version id> (Assign version, versions starting with 'v' are managed\nby the\
    \ configureHomer.pl script and my be overwritten, default: custom)"
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_as
  doc: '(Redundant/CpG analysis start, default: -300)'
  type: long?
  inputBinding:
    prefix: -as
- id: in_ae
  doc: '(Redundant/CpG analysis end, default: 50)'
  type: long?
  inputBinding:
    prefix: -ae
- id: in_genome
  doc: (homer genome version -OR- genome FASTA file)
  type: File?
  inputBinding:
    prefix: -genome
- id: in_tss
  doc: (peak file centered on TSS positions)
  type: File?
  inputBinding:
    prefix: -tss
- id: in_size
  doc: '(default: 4000, i.e. +/- 2000 from the TSS)'
  type: long?
  inputBinding:
    prefix: -size
- id: in_dist
  doc: '<#> (Distance between promoters to consider redundant, default: 500)'
  type: boolean?
  inputBinding:
    prefix: -dist
- id: in_fast_a
  doc: "(FASTA file of promoter regions)\nEach promoter should be the same length\
    \ with only the ID after each \">\"\nFASTA Files will be considered \"masked\"\
    \ so that it will be the default option"
  type: File?
  inputBinding:
    prefix: -fasta
- id: in_offset
  doc: <#> (offset of the first base, i.e. -1000 for 1kb upstream)
  type: boolean?
  inputBinding:
    prefix: -offset
- id: in_required_parameters_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- loadPromoters.pl
