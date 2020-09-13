version 1.0

task RemoveRedundant {
  input {
    Boolean? gff_three
    File polishes_file
  }
  command <<<
    removeRedundant \
      ~{polishes_file} \
      ~{if (gff_three) then "-gff3" else ""}
  >>>
  parameter_meta {
    gff_three: ""
    polishes_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}