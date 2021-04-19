version 1.0

task ExcisePrecursorspl {
  input {
    Int? only_excise_is
    Boolean? output_progress_screen
  }
  command <<<
    excise_precursors_pl \
      ~{if defined(only_excise_is) then ("-a " +  '"' + only_excise_is + '"') else ""} \
      ~{if (output_progress_screen) then "-b" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  parameter_meta {
    only_excise_is: "Only excise if the potential mature microRNA is represented\\nby a number of reads equal to or higher than the integer\\n(default 2)."
    output_progress_screen: "Output progress to screen"
  }
  output {
    File out_stdout = stdout()
  }
}