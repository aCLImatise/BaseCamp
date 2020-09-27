version 1.0

task Aligninfo2 {
  input {
    Boolean? all
    Boolean? ref
    Boolean? bam
    Boolean? qual
    Boolean? headers
    File? ngc
    Boolean? verbose
    Boolean? quiet
    File? option_file
    File db_path
    String quit_dot
    File file_dot
  }
  command <<<
    align_info_2 \
      ~{db_path} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (all) then "--all" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (qual) then "--qual" else ""} \
      ~{if (headers) then "--headers" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    all: "print all information"
    ref: "print refseq information [default]"
    bam: "print bam header (if present)"
    qual: "print quality statistics (if present)"
    headers: "print headers for output blocks"
    ngc: "path to ngc file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    db_path: "Path to the database"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "align-info.2 : 2.10.8"
  }
  output {
    File out_stdout = stdout()
  }
}