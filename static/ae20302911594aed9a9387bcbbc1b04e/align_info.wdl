version 1.0

task AlignInfo.2 {
  input {
    Boolean? all
    Boolean? ref
    Boolean? bam
    Boolean? qual
    Boolean? headers
    File? ngc
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String db_path
  }
  command <<<
    align-info.2 \
      ~{db_path} \
      ~{true="--all" false="" all} \
      ~{true="--ref" false="" ref} \
      ~{true="--bam" false="" bam} \
      ~{true="--qual" false="" qual} \
      ~{true="--headers" false="" headers} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    all: "print all information "
    ref: "print refseq information [default] "
    bam: "print bam header (if present) "
    qual: "print quality statistics (if present) "
    headers: "print headers for output blocks "
    ngc: "path to ngc file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    db_path: "Path to the database"
  }
}