version 1.0

task Vdbdecrypt2108 {
  input {
    Boolean? force
    Boolean? decrypt_sra_files
    File? ngc
    Boolean? verbose
    Boolean? quiet
    File? option_file
    File source_file
    File destination_file
    Directory destination_directory
    Directory directory
    String quit_dot
    File file_dot
  }
  command <<<
    vdb_decrypt_2_10_8 \
      ~{source_file} \
      ~{destination_file} \
      ~{destination_directory} \
      ~{directory} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (force) then "--force" else ""} \
      ~{if (decrypt_sra_files) then "--decrypt-sra-files" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Force overwrite of existing files"
    decrypt_sra_files: "decrypt sra archives [NOT RECOMMENDED]"
    ngc: "PATH to ngc file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    source_file: "file to decrypt"
    destination_file: "name of resulting file"
    destination_directory: "directory of resulting file"
    directory: "directory to decrypt"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "Details:"
  }
  output {
    File out_stdout = stdout()
  }
}