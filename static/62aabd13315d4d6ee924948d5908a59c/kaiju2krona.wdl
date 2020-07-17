version 1.0

task Kaiju2krona {
  input {
    File? name_input_file
    File? name_output_file
    File? name_nodesdmp_file
    File? name_namesdmp_file
    Boolean? enable_verbose_output
    Boolean? include_count_unclassified
  }
  command <<<
    kaiju2krona \
      ~{if defined(name_input_file) then ("-i " +  '"' + name_input_file + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(name_nodesdmp_file) then ("-t " +  '"' + name_nodesdmp_file + '"') else ""} \
      ~{if defined(name_namesdmp_file) then ("-n " +  '"' + name_namesdmp_file + '"') else ""} \
      ~{true="-v" false="" enable_verbose_output} \
      ~{true="-u" false="" include_count_unclassified}
  >>>
  parameter_meta {
    name_input_file: "Name of input file"
    name_output_file: "Name of output file."
    name_nodesdmp_file: "Name of nodes.dmp file"
    name_namesdmp_file: "Name of names.dmp file"
    enable_verbose_output: "Enable verbose output."
    include_count_unclassified: "Include count for unclassified reads in output."
  }
}