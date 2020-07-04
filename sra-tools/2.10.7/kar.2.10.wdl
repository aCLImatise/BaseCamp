version 1.0

task Kar.2.10.7 {
  input {
    String? create
    String? extract
    String? test
    Directory? directory
    Boolean? force
    Boolean? long_list
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    Boolean? stdout
    Boolean? md_five
  }
  command <<<
    kar.2.10.7 \
      ~{if defined(create) then ("--create " +  '"' + create + '"') else ""} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--long-list" false="" long_list} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--md5" false="" md_five}
  >>>
  parameter_meta {
    create: "Create new archive. "
    extract: "Extract the contents of an archive into  directory. "
    test: "Check the structural validity of an archive "
    directory: "The next token on the command line is the  name of the directory to extract to or  create from "
    force: "(no parameter) this will cause the extract  or create to over-write existing files unless  they are write-protected. Without this  option the program will fail if the archive  already exists for create or the target  directory exists for an extract "
    long_list: "more information will be given on each file  in test/list mode. "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    stdout: "Direct output to stdout "
    md_five: "create md5sum-compatible checksum file "
  }
}