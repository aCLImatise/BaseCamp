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
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  parameter_meta {
    output_progress_screen: "Output progress to screen"
  }
  output {
    File out_stdout = stdout()
  }
}