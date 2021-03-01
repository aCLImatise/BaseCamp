version 1.0

task EvoFoldV2 {
  input {
    Boolean? arg_path_evofold
    Boolean? arg_output_complete
    Boolean? arg_name_use
    Int? decimals
    File? arg_output_file
    String ev_of_old
    String alg_do_tama
    String tree_dot_neiw_ck
  }
  command <<<
    EvoFoldV2 \
      ~{ev_of_old} \
      ~{alg_do_tama} \
      ~{tree_dot_neiw_ck} \
      ~{if (arg_path_evofold) then "-c" else ""} \
      ~{if (arg_output_complete) then "-f" else ""} \
      ~{if (arg_name_use) then "-n" else ""} \
      ~{if defined(decimals) then ("--decimals " +  '"' + decimals + '"') else ""} \
      ~{if (arg_output_file) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_path_evofold: "[ --configFilePath ] arg (=./) Path to EvoFold configuration files."
    arg_output_complete: "[ --completeFile ] arg         Output complete structure predictions for\\neach input element in addition to the\\nsub-structures."
    arg_name_use: "[ --annoName ] arg             Name of annotation to use (see annoMap file\\nfor definition of annotation symbols. Note\\nthat '*' can be used as wildcard.\\nSpecifying annotation is useful for adding\\nconstraints on the predicted structure."
    decimals: "(=5)               Output precision of score."
    arg_output_file: "[ --outputFile ] arg (=-)      Output file (default is stdout)."
    ev_of_old: ""
    alg_do_tama: ""
    tree_dot_neiw_ck: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}