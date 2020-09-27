class: CommandLineTool
id: maker.cwl
inputs:
- id: in_genome
  doc: '|g <file>    Overrides the genome file path in the control files'
  type: boolean
  inputBinding:
    prefix: -genome
- id: in_rm_off
  doc: '|R           Turns all repeat masking options off.'
  type: boolean
  inputBinding:
    prefix: -RM_off
- id: in_datastore_slash
  doc: Forcably turn on/off MAKER's two deep directory
  type: boolean
  inputBinding:
    prefix: -datastore/
- id: in_old_struct
  doc: Use the old directory styles (MAKER 2.26 and lower)
  type: boolean
  inputBinding:
    prefix: -old_struct
- id: in_base
  doc: "<string>   Set the base name MAKER uses to save output files.\nMAKER uses\
    \ the input genome file name by default."
  type: boolean
  inputBinding:
    prefix: -base
- id: in_tries
  doc: '|t <integer>  Run contigs up to the specified number of tries.'
  type: boolean
  inputBinding:
    prefix: -tries
- id: in_cpus
  doc: "|c  <integer>  Tells how many cpus to use for BLAST analysis.\nNote: this\
    \ is for BLAST and not for MPI!"
  type: boolean
  inputBinding:
    prefix: -cpus
- id: in_mpi
  doc: "Forces MAKER to use MPI (overriding MPI autodetection).\nUseful if MAKER doesn't\
    \ correctly detect that it was\nlaunched using an MPI process manager, or if running\n\
    in a Singularity container."
  type: boolean
  inputBinding:
    prefix: -mpi
- id: in_force
  doc: "|f            Forces MAKER to delete old files before running again.\nThis\
    \ will require all blast analyses to be rerun."
  type: boolean
  inputBinding:
    prefix: -force
- id: in_again
  doc: "|a            recaculate all annotations and output files even if no\nsettings\
    \ have changed. Does not delete old analyses."
  type: boolean
  inputBinding:
    prefix: -again
- id: in_quiet
  doc: '|q            Regular quiet. Only a handlful of status messages.'
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_qq
  doc: Even more quiet. There are no status messages.
  type: boolean
  inputBinding:
    prefix: -qq
- id: in_ds_index
  doc: "Quickly generate datastore index file. Note that this\nwill not check if run\
    \ settings have changed on contigs"
  type: boolean
  inputBinding:
    prefix: -dsindex
- id: in_no_lock
  doc: "Turn off file locks. May be usful on some file systems,\nbut can cause race\
    \ conditions if running in parallel."
  type: boolean
  inputBinding:
    prefix: -nolock
- id: in_tmp
  doc: Specify temporary directory to use.
  type: boolean
  inputBinding:
    prefix: -TMP
- id: in_ctl
  doc: Generate empty control files in the current directory.
  type: boolean
  inputBinding:
    prefix: -CTL
- id: in_opts
  doc: Generates just the maker_opts.ctl file.
  type: boolean
  inputBinding:
    prefix: -OPTS
- id: in_b_opts
  doc: Generates just the maker_bopts.ctl file.
  type: boolean
  inputBinding:
    prefix: -BOPTS
- id: in_exe
  doc: Generates just the maker_exe.ctl file.
  type: boolean
  inputBinding:
    prefix: -EXE
- id: in_m_was
  doc: "<option>   Easy way to control mwas_server for web-based GUI\noptions:  STOP\n\
    START\nRESTART"
  type: boolean
  inputBinding:
    prefix: -MWAS
- id: in_version
  doc: Prints the MAKER version.
  type: boolean
  inputBinding:
    prefix: -version
- id: in_no_data_store
  doc: structure for output.  Always on by default.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maker
