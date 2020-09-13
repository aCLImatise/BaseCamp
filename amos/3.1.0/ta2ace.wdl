version 1.0

task Ta2ace {
  input {
    File? file_must_end
    File? output_file_default
    String? location_of_chromatograms
    Directory? location_phd_directory
    File? sequence_file_default
    String? database_using_i
    String? database_info
    String? u
    String? var_8
    File? list_put_in
  }
  command <<<
    ta2ace \
      ~{if defined(file_must_end) then ("-i " +  '"' + file_must_end + '"') else ""} \
      ~{if defined(output_file_default) then ("-o " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(location_of_chromatograms) then ("-c " +  '"' + location_of_chromatograms + '"') else ""} \
      ~{if defined(location_phd_directory) then ("-p " +  '"' + location_phd_directory + '"') else ""} \
      ~{if defined(sequence_file_default) then ("-s " +  '"' + sequence_file_default + '"') else ""} \
      ~{if defined(database_using_i) then ("-D " +  '"' + database_using_i + '"') else ""} \
      ~{if defined(database_info) then ("-S " +  '"' + database_info + '"') else ""} \
      ~{if defined(u) then ("-U " +  '"' + u + '"') else ""} \
      ~{if defined(var_8) then ("-P " +  '"' + var_8 + '"') else ""} \
      ~{if defined(list_put_in) then ("-a " +  '"' + list_put_in + '"') else ""}
  >>>
  parameter_meta {
    file_must_end: ".asm TIGR .asm file.  Must end in .asm"
    output_file_default: "Output file, by default <infile>.ace"
    location_of_chromatograms: "Location of the chromatograms"
    location_phd_directory: "Location of the PHD directory"
    sequence_file_default: "Sequence file, by default <infile>.seq"
    database_using_i: "Database (if not using -i and -s)"
    database_info: "Database info"
    u: ""
    var_8: ""
    list_put_in: "List of assemblies to put in .ace file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}