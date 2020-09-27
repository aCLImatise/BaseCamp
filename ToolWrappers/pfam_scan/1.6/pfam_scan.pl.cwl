class: CommandLineTool
id: pfam_scan.pl.cwl
inputs:
- id: in_outfile
  doc: ': output file, otherwise send to STDOUT'
  type: File
  inputBinding:
    prefix: -outfile
- id: in_clan_overlap
  doc: ': show overlapping hits within clan member families (applies to Pfam-A families
    only)'
  type: boolean
  inputBinding:
    prefix: -clan_overlap
- id: in_align
  doc: ': show the HMM-sequence alignment for each match'
  type: boolean
  inputBinding:
    prefix: -align
- id: in_e_seq
  doc: ': specify hmmscan evalue sequence cutoff for Pfam-A searches (default Pfam
    defined)'
  type: string
  inputBinding:
    prefix: -e_seq
- id: in_e_dom
  doc: ': specify hmmscan evalue domain cutoff for Pfam-A searches (default Pfam defined)'
  type: string
  inputBinding:
    prefix: -e_dom
- id: in_b_seq
  doc: ': specify hmmscan bit score sequence cutoff for Pfam-A searches (default Pfam
    defined)'
  type: string
  inputBinding:
    prefix: -b_seq
- id: in_b_dom
  doc: ': specify hmmscan bit score domain cutoff for Pfam-A searches (default Pfam
    defined)'
  type: string
  inputBinding:
    prefix: -b_dom
- id: in_as
  doc: ': predict active site residues for Pfam-A matches'
  type: boolean
  inputBinding:
    prefix: -as
- id: in_json
  doc: "[pretty]    : write results in JSON format. If the optional value \"pretty\"\
    \ is given,\nthe JSON output will be formatted using the \"pretty\" option in\
    \ the JSON\nmodule"
  type: boolean
  inputBinding:
    prefix: -json
- id: in_cpu
  doc: ': number of parallel CPU workers to use for multithreads (default all)'
  type: long
  inputBinding:
    prefix: -cpu
- id: in_translate
  doc: "[mode] : treat sequence as DNA and perform six-frame translation before searching.\
    \ If the\noptional value \"mode\" is given it must be either \"all\", to translate\
    \ everything\nand produce no individual ORFs, or \"orf\", to report only ORFs\
    \ with length greater\nthan 20. If \"-translate\" is used without a \"mode\" value,\
    \ the default is to\nreport ORFs (default no translation)"
  type: boolean
  inputBinding:
    prefix: -translate
- id: in_dir
  doc: ''
  type: Directory
  inputBinding:
    prefix: -dir
- id: in_fast_a
  doc: ''
  type: File
  inputBinding:
    prefix: -fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: ': output file, otherwise send to STDOUT'
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- pfam_scan.pl
