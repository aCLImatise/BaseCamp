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
      ~{if (genome) then "-genome" else ""} \
      ~{if (rm_off) then "-RM_off" else ""} \
      ~{if (datastore_slash) then "-datastore/" else ""} \
      ~{if (old_struct) then "-old_struct" else ""} \
      ~{if (base) then "-base" else ""} \
      ~{if (tries) then "-tries" else ""} \
      ~{if (cpus) then "-cpus" else ""} \
      ~{if (mpi) then "-mpi" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (again) then "-again" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (qq) then "-qq" else ""} \
      ~{if (ds_index) then "-dsindex" else ""} \
      ~{if (no_lock) then "-nolock" else ""} \
      ~{if (tmp) then "-TMP" else ""} \
      ~{if (ctl) then "-CTL" else ""} \
      ~{if (opts) then "-OPTS" else ""} \
      ~{if (b_opts) then "-BOPTS" else ""} \
      ~{if (exe) then "-EXE" else ""} \
      ~{if (m_was) then "-MWAS" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    genome: "|g <file>    Overrides the genome file path in the control files"
    rm_off: "|R           Turns all repeat masking options off."
    datastore_slash: "Forcably turn on/off MAKER's two deep directory"
    old_struct: "Use the old directory styles (MAKER 2.26 and lower)"
    base: "<string>   Set the base name MAKER uses to save output files.\\nMAKER uses the input genome file name by default."
    tries: "|t <integer>  Run contigs up to the specified number of tries."
    cpus: "|c  <integer>  Tells how many cpus to use for BLAST analysis.\\nNote: this is for BLAST and not for MPI!"
    mpi: "Forces MAKER to use MPI (overriding MPI autodetection).\\nUseful if MAKER doesn't correctly detect that it was\\nlaunched using an MPI process manager, or if running\\nin a Singularity container."
    force: "|f            Forces MAKER to delete old files before running again.\\nThis will require all blast analyses to be rerun."
    again: "|a            recaculate all annotations and output files even if no\\nsettings have changed. Does not delete old analyses."
    quiet: "|q            Regular quiet. Only a handlful of status messages."
    qq: "Even more quiet. There are no status messages."
    ds_index: "Quickly generate datastore index file. Note that this\\nwill not check if run settings have changed on contigs"
    no_lock: "Turn off file locks. May be usful on some file systems,\\nbut can cause race conditions if running in parallel."
    tmp: "Specify temporary directory to use."
    ctl: "Generate empty control files in the current directory."
    opts: "Generates just the maker_opts.ctl file."
    b_opts: "Generates just the maker_bopts.ctl file."
    exe: "Generates just the maker_exe.ctl file."
    m_was: "<option>   Easy way to control mwas_server for web-based GUI\\noptions:  STOP\\nSTART\\nRESTART"
    version: "Prints the MAKER version."
    no_data_store: "structure for output.  Always on by default."
  }
  output {
    File out_stdout = stdout()
  }
}