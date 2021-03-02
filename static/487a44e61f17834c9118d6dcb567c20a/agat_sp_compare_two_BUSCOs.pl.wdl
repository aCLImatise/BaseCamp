version 1.0

task AgatSpCompareTwoBUSCOspl {
  input {
    Boolean? fone
    Boolean? f_two
    Int? verbose
    Directory? string_output_folder
    String agat_sp_compare_two_bus_cos_do_tpl
  }
  command <<<
    agat_sp_compare_two_BUSCOs_pl \
      ~{agat_sp_compare_two_bus_cos_do_tpl} \
      ~{if (fone) then "--f1" else ""} \
      ~{if (f_two) then "--f2" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(string_output_folder) then ("--output " +  '"' + string_output_folder + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fone: "STRING: Input busco folder1"
    f_two: "STRING: Input busco folder2"
    verbose: "Integer: For displaying extra information use -v 1. For\\nactivating the verbosity in the omniscient parser use -v 66.\\n(not recommended)"
    string_output_folder: "STRING: Output folder."
    agat_sp_compare_two_bus_cos_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    Directory out_string_output_folder = "${in_string_output_folder}"
  }
}