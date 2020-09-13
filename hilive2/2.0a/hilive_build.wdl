version 1.0

task Hilivebuild {
  input {
    Boolean? print_licensing_information
    Boolean? arg_reference_genomes
    File? arg_output_file
    Boolean? do_not_convert_spaces
    Boolean? trim_after_space
  }
  command <<<
    hilive_build \
      ~{if (print_licensing_information) then "-l" else ""} \
      ~{if (arg_reference_genomes) then "-i" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (do_not_convert_spaces) then "--do-not-convert-spaces" else ""} \
      ~{if (trim_after_space) then "--trim-after-space" else ""}
  >>>
  parameter_meta {
    print_licensing_information: "[ --license ]         Print licensing information and exit"
    arg_reference_genomes: "[ --input ] arg       Reference genome(s) in (multi-)FASTA format.\\n[REQUIRED]"
    arg_output_file: "[ --out-prefix ] arg  Output file prefix. Several files with the same\\nprefix will be created. [REQUIRED]"
    do_not_convert_spaces: "Do not convert all spaces in reference ids to\\nunderscores [Default: converting is on]"
    trim_after_space: "Trim all reference ids after first space [Default:\\nfalse]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}