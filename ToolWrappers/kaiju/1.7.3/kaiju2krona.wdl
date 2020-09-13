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
      ~{if (enable_verbose_output) then "-v" else ""} \
      ~{if (include_count_unclassified) then "-u" else ""}
  >>>
  parameter_meta {
    name_input_file: "Name of input file"
    name_output_file: "Name of output file."
    name_nodesdmp_file: "Name of nodes.dmp file"
    name_namesdmp_file: "Name of names.dmp file"
    enable_verbose_output: "Enable verbose output."
    include_count_unclassified: "Include count for unclassified reads in output."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}