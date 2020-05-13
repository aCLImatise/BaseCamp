class: CommandLineTool
id: maker.cwl
inputs:
- id: no_data_store
  doc: structure for output.  Always on by default.
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: '|g <file>    Overrides the genome file path in the control files'
  type: boolean
  inputBinding:
    prefix: -genome
- id: rm_off
  doc: '|R           Turns all repeat masking options off.'
  type: boolean
  inputBinding:
    prefix: -RM_off
- id: datastore
  doc: /         Forcably turn on/off MAKER's two deep directory
  type: boolean
  inputBinding:
    prefix: -datastore
- id: old_struct
  doc: Use the old directory styles (MAKER 2.26 and lower)
  type: boolean
  inputBinding:
    prefix: -old_struct
- id: base
  doc: <string>   Set the base name MAKER uses to save output files. MAKER uses the
    input genome file name by default.
  type: boolean
  inputBinding:
    prefix: -base
- id: tries
  doc: '|t <integer>  Run contigs up to the specified number of tries.'
  type: boolean
  inputBinding:
    prefix: -tries
- id: cpus
  doc: '|c  <integer>  Tells how many cpus to use for BLAST analysis. Note: this is
    for BLAST and not for MPI!'
  type: boolean
  inputBinding:
    prefix: -cpus
- id: mpi
  doc: Forces MAKER to use MPI (overriding MPI autodetection). Useful if MAKER doesn't
    correctly detect that it was launched using an MPI process manager, or if running
    in a Singularity container.
  type: boolean
  inputBinding:
    prefix: -mpi
- id: force
  doc: '|f            Forces MAKER to delete old files before running again. This
    will require all blast analyses to be rerun.'
  type: boolean
  inputBinding:
    prefix: -force
- id: again
  doc: '|a            recaculate all annotations and output files even if no settings
    have changed. Does not delete old analyses.'
  type: boolean
  inputBinding:
    prefix: -again
- id: quiet
  doc: '|q            Regular quiet. Only a handlful of status messages.'
  type: boolean
  inputBinding:
    prefix: -quiet
- id: qq
  doc: Even more quiet. There are no status messages.
  type: boolean
  inputBinding:
    prefix: -qq
- id: ds_index
  doc: Quickly generate datastore index file. Note that this will not check if run
    settings have changed on contigs
  type: boolean
  inputBinding:
    prefix: -dsindex
- id: no_lock
  doc: Turn off file locks. May be usful on some file systems, but can cause race
    conditions if running in parallel.
  type: boolean
  inputBinding:
    prefix: -nolock
- id: tmp
  doc: Specify temporary directory to use.
  type: boolean
  inputBinding:
    prefix: -TMP
- id: ctl
  doc: Generate empty control files in the current directory.
  type: boolean
  inputBinding:
    prefix: -CTL
- id: opts
  doc: Generates just the maker_opts.ctl file.
  type: boolean
  inputBinding:
    prefix: -OPTS
- id: b_opts
  doc: Generates just the maker_bopts.ctl file.
  type: boolean
  inputBinding:
    prefix: -BOPTS
- id: exe
  doc: Generates just the maker_exe.ctl file.
  type: boolean
  inputBinding:
    prefix: -EXE
- id: m_was
  doc: '<option>   Easy way to control mwas_server for web-based GUI options:  STOP
    START RESTART'
  type: boolean
  inputBinding:
    prefix: -MWAS
- id: version
  doc: Prints the MAKER version.
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- maker
