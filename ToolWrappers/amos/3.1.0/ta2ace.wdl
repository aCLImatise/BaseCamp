version 1.0

task Ta2ace {
  input {
    File? tigr_asm_file
    File? output_file_default
    String? location_of_chromatograms
    Directory? location_phd_directory
    File? sequence_file_default
    String? database_using_i
    String? database_info
    File? list_put_ace
  }
  command <<<
    ta2ace \
      ~{if defined(tigr_asm_file) then ("-i " +  '"' + tigr_asm_file + '"') else ""} \
      ~{if defined(output_file_default) then ("-o " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(location_of_chromatograms) then ("-c " +  '"' + location_of_chromatograms + '"') else ""} \
      ~{if defined(location_phd_directory) then ("-p " +  '"' + location_phd_directory + '"') else ""} \
      ~{if defined(sequence_file_default) then ("-s " +  '"' + sequence_file_default + '"') else ""} \
      ~{if defined(database_using_i) then ("-D " +  '"' + database_using_i + '"') else ""} \
      ~{if defined(database_info) then ("-S " +  '"' + database_info + '"') else ""} \
      ~{if defined(list_put_ace) then ("-U " +  '"' + list_put_ace + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tigr_asm_file: ".asm TIGR .asm file.  Must end in .asm"
    output_file_default: "Output file, by default <infile>.ace"
    location_of_chromatograms: "Location of the chromatograms"
    location_phd_directory: "Location of the PHD directory"
    sequence_file_default: "Sequence file, by default <infile>.seq"
    database_using_i: "Database (if not using -i and -s)"
    database_info: "Database info"
    list_put_ace: "List of assemblies to put in .ace file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}