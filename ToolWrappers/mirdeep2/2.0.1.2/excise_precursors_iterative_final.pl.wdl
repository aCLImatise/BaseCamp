version 1.0

task ExcisePrecursorsIterativeFinalpl {
  input {
    Boolean? output_progress_screen
  }
  command <<<
    excise_precursors_iterative_final_pl \
      ~{if (output_progress_screen) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_progress_screen: "Output progress to screen"
  }
  output {
    File out_stdout = stdout()
  }
}