class: CommandLineTool
id: get_organelle_config.py.cwl
inputs:
- id: in_add
  doc: "Add database for organelle type(s). Followed by any of\nall/embplant_pt/embplant_mt/embplant_nr/fungus_mt/anim\n\
    al_mt/other_pt or multiple types joined by comma such\nas embplant_pt,embplant_mt,fungus_mt."
  type: string?
  inputBinding:
    prefix: --add
- id: in_use_version
  doc: "The version of database to add. Find more versions at\ngithub.com/Kinggerm/GetOrganelleDB.\
    \ Default: latest"
  type: string?
  inputBinding:
    prefix: --use-version
- id: in_rm
  doc: "Remove local database(s) for organelle type(s).\nFollowed by any of all/embplant_pt/embplant_mt/embplan\n\
    t_nr/fungus_mt/animal_mt/other_pt or multiple types\njoined by comma such as embplant_pt,embplant_mt."
  type: string?
  inputBinding:
    prefix: --rm
- id: in_update
  doc: "Update local databases to the latest online version,\nor the local version\
    \ if \"--use-local LOCAL_DB_PATH\"\nprovided."
  type: boolean?
  inputBinding:
    prefix: --update
- id: in_use_local
  doc: "Input a path. This local database path must include\nsubdirectories LabelDatabase\
    \ and SeedDatabase, under\nwhich there is the fasta file(s) named by the\norganelle\
    \ type you want add, such as fungus_mt.fasta."
  type: File?
  inputBinding:
    prefix: --use-local
- id: in_clean
  doc: Remove all configured database files (=="--rm all").
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_list
  doc: List configured databases checking and exit.
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_check
  doc: Check configured database files and exit.
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_db_type
  doc: 'The database type (seed/label/both). Default: both'
  type: string?
  inputBinding:
    prefix: --db-type
- id: in_which_blast
  doc: "Assign the path to BLAST binary files if not added to\nthe path. Default:\
    \ try \"/GetOrganelleDep/linux/ncbi-\nblast\" first, then $PATH"
  type: File?
  inputBinding:
    prefix: --which-blast
- id: in_which_bowtie_two
  doc: "Assign the path to Bowtie2 binary files if not added\nto the path. Default:\
    \ try\n\"/GetOrganelleDep/linux/bowtie2\" first, then $PATH"
  type: long?
  inputBinding:
    prefix: --which-bowtie2
- id: in_verbose
  doc: 'verbose output to the screen. Default: False'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -F
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_organelle_config.py
