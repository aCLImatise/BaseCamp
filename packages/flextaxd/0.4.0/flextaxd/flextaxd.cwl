class: CommandLineTool
id: flextaxd.cwl
inputs:
- id: in_outdir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_dump
  doc: Write database to names.dmp and nodes.dmp
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_dump_mini
  doc: Dump minimal file with tab as separator
  type: boolean?
  inputBinding:
    prefix: --dump_mini
- id: in_force
  doc: "use when script is implemented in pipeline to avoid\nsecurity questions on\
    \ overwrite!"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_validate
  doc: Validate database format
  type: boolean?
  inputBinding:
    prefix: --validate
- id: in_stats
  doc: Print some statistics from the database
  type: boolean?
  inputBinding:
    prefix: --stats
- id: in_taxonomy_file
  doc: Taxonomy source file
  type: boolean?
  inputBinding:
    prefix: --taxonomy_file
- id: in_taxonomy_type
  doc: "Source format of taxonomy input file\n(QIIME,NCBI,CanSNPer)"
  type: boolean?
  inputBinding:
    prefix: --taxonomy_type
- id: in_taxid_base
  doc: "The base for internal taxonomy ID numbers, when using\nNCBI as base select\
    \ base at minimum 3000000 (default =\n1)"
  type: boolean?
  inputBinding:
    prefix: --taxid_base
- id: in_mod_file
  doc: "File contaning modifications parent,child,(taxonomy\nlevel)"
  type: boolean?
  inputBinding:
    prefix: --mod_file
- id: in_mod_database
  doc: Database file containing modifications
  type: boolean?
  inputBinding:
    prefix: --mod_database
- id: in_genome_id_two_taxid
  doc: "File that lists which node a genome should be assigned\nto"
  type: boolean?
  inputBinding:
    prefix: --genomeid2taxid
- id: in_genomes_path
  doc: "Path to genome folder is required when using\nNCBI_taxonomy as source"
  type: boolean?
  inputBinding:
    prefix: --genomes_path
- id: in_parent
  doc: Parent from which to add (replace see below) branch
  type: boolean?
  inputBinding:
    prefix: --parent
- id: in_replace
  doc: Add if existing children of parents should be removed!
  type: boolean?
  inputBinding:
    prefix: --replace
- id: in_clean_database
  doc: Clean up database from unannotated nodes
  type: boolean?
  inputBinding:
    prefix: --clean_database
- id: in_skip_annotation
  doc: Do not automatically add annotation when creating GTDB
  type: boolean?
  inputBinding:
    prefix: --skip_annotation
- id: in_db_program
  doc: "Adjust output file to certain output specifications\n[kraken2, krakenuniq,\
    \ ganon, centrifuge, bracken]"
  type: File?
  inputBinding:
    prefix: --dbprogram
- id: in_dump_prefix
  doc: "change dump prefix reqires two names\ndefault(names,nodes)"
  type: boolean?
  inputBinding:
    prefix: --dump_prefix
- id: in_dump_sep
  doc: "Set output separator default(NCBI) also adds extra\ntrailing columns for kraken"
  type: boolean?
  inputBinding:
    prefix: --dump_sep
- id: in_dump_descriptions
  doc: Dump description names instead of database integers
  type: boolean?
  inputBinding:
    prefix: --dump_descriptions
- id: in_visualise_node
  doc: Visualise tree from selected node
  type: boolean?
  inputBinding:
    prefix: --visualise_node
- id: in_vis_type
  doc: Choices [newick, newick_vis, tree]
  type: boolean?
  inputBinding:
    prefix: --vis_type
- id: in_vis_depth
  doc: "Maximum depth from node to visualise default 3, 0 =\nall levels"
  type: boolean?
  inputBinding:
    prefix: --vis_depth
- id: in_logs
  doc: Specify log directory
  type: boolean?
  inputBinding:
    prefix: --logs
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Debug output
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_supress
  doc: Supress warnings
  type: boolean?
  inputBinding:
    prefix: --supress
- id: in_quiet
  doc: Dont show logging messages in terminal!
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_db
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_required
  doc: -db , --database      FlexTaxD taxonomy sqlite3 database file (fullpath)
  type: string
  inputBinding:
    position: 0
- id: in_database
  doc: 'output_opts:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_db_program
  doc: "Adjust output file to certain output specifications\n[kraken2, krakenuniq,\
    \ ganon, centrifuge, bracken]"
  type: File?
  outputBinding:
    glob: $(inputs.in_db_program)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flextaxd:0.4.0--py_0
cwlVersion: v1.1
baseCommand:
- flextaxd
