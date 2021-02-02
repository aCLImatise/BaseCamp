class: CommandLineTool
id: flextaxd.cwl
inputs:
- id: in__outdir_output
  doc: ', --outdir         Output directory'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_dump
  doc: Write database to names.dmp and nodes.dmp
  type: boolean
  inputBinding:
    prefix: --dump
- id: in_dump_mini
  doc: Dump minimal file with tab as separator
  type: boolean
  inputBinding:
    prefix: --dump_mini
- id: in_force
  doc: "use when script is implemented in pipeline to avoid\nsecurity questions on\
    \ overwrite!"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_tf
  doc: ", --taxonomy_file\nTaxonomy source file"
  type: boolean
  inputBinding:
    prefix: -tf
- id: in_tt
  doc: ", --taxonomy_type\nSource format of taxonomy input file\n(QIIME,CanSNPer,NCBI)"
  type: boolean
  inputBinding:
    prefix: -tt
- id: in_taxid_base
  doc: "The base for internal taxonomy ID numbers, when using\nNCBI as base select\
    \ base at minimum 3000000 (default =\n1)"
  type: boolean
  inputBinding:
    prefix: --taxid_base
- id: in_mf
  doc: ", --mod_file      File contaning modifications parent,child,(taxonomy\nlevel)"
  type: boolean
  inputBinding:
    prefix: -mf
- id: in_md
  doc: ", --mod_database\nDatabase file containing modifications"
  type: boolean
  inputBinding:
    prefix: -md
- id: in_gt
  doc: ", --genomeid2taxid\nFile that lists which node a genome should be assigned\n\
    to"
  type: boolean
  inputBinding:
    prefix: -gt
- id: in_gp
  doc: ", --genomes_path\nPath to genome folder is required when using\nNCBI_taxonomy\
    \ as source"
  type: boolean
  inputBinding:
    prefix: -gp
- id: in__parent_parent
  doc: ', --parent         Parent from which to add (replace see below) branch'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_replace
  doc: Add if existing children of parents should be removed!
  type: boolean
  inputBinding:
    prefix: --replace
- id: in_db_program
  doc: "Adjust output file to certain output specifications\n[kraken2, krakenuniq,\
    \ ganon, centrifuge]"
  type: File
  inputBinding:
    prefix: --dbprogram
- id: in_dump_prefix
  doc: "change dump prefix reqires two names\ndefault(names,nodes)"
  type: boolean
  inputBinding:
    prefix: --dump_prefix
- id: in_dump_sep
  doc: "Set output separator default(NCBI) also adds extra\ntrailing columns for kraken"
  type: boolean
  inputBinding:
    prefix: --dump_sep
- id: in_dump_descriptions
  doc: Dump description names instead of database integers
  type: boolean
  inputBinding:
    prefix: --dump_descriptions
- id: in_logs
  doc: Specify log directory
  type: boolean
  inputBinding:
    prefix: --logs
- id: in_verbose
  doc: Verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Debug output
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_supress
  doc: Supress warnings
  type: boolean
  inputBinding:
    prefix: --supress
- id: in_quiet
  doc: Don´t show logging messages in terminal!
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_db
  doc: ''
  type: boolean
  inputBinding:
    prefix: -db
- id: in_required
  doc: -db , --database      Custom taxonomy sqlite3 database file (fullpath)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outdir_output
  doc: ', --outdir         Output directory'
  type: Directory
  outputBinding:
    glob: $(inputs.in__outdir_output)
- id: out_db_program
  doc: "Adjust output file to certain output specifications\n[kraken2, krakenuniq,\
    \ ganon, centrifuge]"
  type: File
  outputBinding:
    glob: $(inputs.in_db_program)
cwlVersion: v1.1
baseCommand:
- flextaxd
