version 1.0

task Kar2 {
  input {
    String? create
    String? extract
    Directory? directory
    Boolean? force
    Boolean? long_list
    Boolean? verbose
    Boolean? quiet
    File? option_file
    Boolean? md_five
    Boolean? t
    Directory directory_dot
    String quit_dot
    File file_dot
  }
  command <<<
    kar_2 \
      ~{directory_dot} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(create) then ("--create " +  '"' + create + '"') else ""} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (long_list) then "--long-list" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""} \
      ~{if (md_five) then "--md5" else ""} \
      ~{if (t) then "-t" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    create: "Create new archive."
    extract: "Extract the contents of an archive into"
    directory: "The next token on the command line is the\\nname of the directory to extract to or\\ncreate from"
    force: "(no parameter) this will cause the extract\\nor create to over-write existing files unless\\nthey are write-protected. Without this\\noption the program will fail if the archive\\nalready exists for create or the target\\ndirectory exists for an extract"
    long_list: "more information will be given on each file\\nin test/list mode."
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    md_five: "create md5sum-compatible checksum file"
    t: ""
    directory_dot: "-t|--test <archive>              Check the structural validity of an archive "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "-Z|--stdout                      Direct output to stdout "
  }
  output {
    File out_stdout = stdout()
  }
}