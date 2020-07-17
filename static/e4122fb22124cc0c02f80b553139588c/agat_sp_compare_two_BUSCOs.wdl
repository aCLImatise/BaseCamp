version 1.0

task AgatSpCompareTwoBUSCOs.pl {
  input {
    Boolean? fone
    Boolean? f_two
    String? verbose
    String? string_output_folder
  }
  command <<<
    agat_sp_compare_two_BUSCOs.pl \
      ~{true="--f1" false="" fone} \
      ~{true="--f2" false="" f_two} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(string_output_folder) then ("--output " +  '"' + string_output_folder + '"') else ""}
  >>>
  parameter_meta {
    fone: "STRING: Input busco folder1"
    f_two: "STRING: Input busco folder2"
    verbose: "Integer: For displaying extra information use -v 1. For activating the verbosity in the omniscient parser use -v 66. (not recommended)"
    string_output_folder: "STRING: Output folder."
  }
}