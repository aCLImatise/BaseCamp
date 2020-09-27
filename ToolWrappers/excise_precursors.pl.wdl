version 1.0

task ExcisePrecursorspl {
  input {
    Int? only_excise_potential
    Boolean? output_progress_screen
  }
  command <<<
    excise_precursors_pl \
      ~{if defined(only_excise_potential) then ("-a " +  '"' + only_excise_potential + '"') else ""} \
      ~{if (output_progress_screen) then "-b" else ""}
  >>>
  parameter_meta {
    only_excise_potential: "Only excise if the potential mature microRNA is represented\\nby a number of reads equal to or higher than the integer\\n(default 2)."
    output_progress_screen: "Output progress to screen"
  }
  output {
    File out_stdout = stdout()
  }
}