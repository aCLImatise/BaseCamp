version 1.0

task MafAddQRows {
  input {
    Int? divisor
    String species_dot_lst
    String in_dot_maf
  }
  command <<<
    mafAddQRows \
      ~{species_dot_lst} \
      ~{in_dot_maf} \
      ~{if defined(divisor) then ("-divisor " +  '"' + divisor + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    divisor: "is value to divide Q value by.  Default is 5."
    species_dot_lst: ""
    in_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}