version 1.0

task PositionalTblCheck {
  input {
    Int? verbose
  }
  command <<<
    positionalTblCheck \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    verbose: "n>=2, print tables as checked"
  }
  output {
    File out_stdout = stdout()
  }
}