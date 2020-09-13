version 1.0

task RandomizeMotifspl1 {
  input {
    Boolean? column_randomized_inverted
  }
  command <<<
    randomizeMotifs_pl __1 \
      ~{if (column_randomized_inverted) then "-ColumnRandomized-Inverted" else ""}
  >>>
  parameter_meta {
    column_randomized_inverted: ""
  }
  output {
    File out_stdout = stdout()
  }
}