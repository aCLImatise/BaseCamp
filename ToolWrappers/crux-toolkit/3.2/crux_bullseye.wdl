version 1.0

task CruxBullseye {
  input {
    Int? gap_tolerance_dot
  }
  command <<<
    crux bullseye \
      ~{if defined(gap_tolerance_dot) then ("--gap-tolerance. " +  '"' + gap_tolerance_dot + '"') else ""}
  >>>
  parameter_meta {
    gap_tolerance_dot: "= 3."
  }
  output {
    File out_stdout = stdout()
  }
}