version 1.0

task Maker {
  input {
    Boolean? genome
    Boolean? rm_off
    Boolean? datastore_slash
    Boolean? old_struct
    Boolean? base
    Boolean? tries
    Boolean? cpus
    Boolean? mpi
    Boolean? force
    Boolean? again
    Boolean? quiet
    Boolean? qq
    Boolean? ds_index
    Boolean? no_lock
    Boolean? tmp
    Boolean? ctl
    Boolean? opts
    Boolean? b_opts
    Boolean? exe
    Boolean? m_was
    Boolean? version
    String no_data_store
  }
  command <<<
    maker \
      ~{no_data_store} \
      ~{true="-genome" false="" genome} \
      ~{true="-RM_off" false="" rm_off} \
      ~{true="-datastore/" false="" datastore_slash} \
      ~{true="-old_struct" false="" old_struct} \
      ~{true="-base" false="" base} \
      ~{true="-tries" false="" tries} \
      ~{true="-cpus" false="" cpus} \
      ~{true="-mpi" false="" mpi} \
      ~{true="-force" false="" force} \
      ~{true="-again" false="" again} \
      ~{true="-quiet" false="" quiet} \
      ~{true="-qq" false="" qq} \
      ~{true="-dsindex" false="" ds_index} \
      ~{true="-nolock" false="" no_lock} \
      ~{true="-TMP" false="" tmp} \
      ~{true="-CTL" false="" ctl} \
      ~{true="-OPTS" false="" opts} \
      ~{true="-BOPTS" false="" b_opts} \
      ~{true="-EXE" false="" exe} \
      ~{true="-MWAS" false="" m_was} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    genome: "|g <file>    Overrides the genome file path in the control files"
    rm_off: "|R           Turns all repeat masking options off."
    datastore_slash: "Forcably turn on/off MAKER's two deep directory"
    old_struct: "Use the old directory styles (MAKER 2.26 and lower)"
    base: "<string>   Set the base name MAKER uses to save output files. MAKER uses the input genome file name by default."
    tries: "|t <integer>  Run contigs up to the specified number of tries."
    cpus: "|c  <integer>  Tells how many cpus to use for BLAST analysis. Note: this is for BLAST and not for MPI!"
    mpi: "Forces MAKER to use MPI (overriding MPI autodetection). Useful if MAKER doesn't correctly detect that it was launched using an MPI process manager, or if running in a Singularity container."
    force: "|f            Forces MAKER to delete old files before running again. This will require all blast analyses to be rerun."
    again: "|a            recaculate all annotations and output files even if no settings have changed. Does not delete old analyses."
    quiet: "|q            Regular quiet. Only a handlful of status messages."
    qq: "Even more quiet. There are no status messages."
    ds_index: "Quickly generate datastore index file. Note that this will not check if run settings have changed on contigs"
    no_lock: "Turn off file locks. May be usful on some file systems, but can cause race conditions if running in parallel."
    tmp: "Specify temporary directory to use."
    ctl: "Generate empty control files in the current directory."
    opts: "Generates just the maker_opts.ctl file."
    b_opts: "Generates just the maker_bopts.ctl file."
    exe: "Generates just the maker_exe.ctl file."
    m_was: "<option>   Easy way to control mwas_server for web-based GUI options:  STOP START RESTART"
    version: "Prints the MAKER version."
    no_data_store: "structure for output.  Always on by default."
  }
}