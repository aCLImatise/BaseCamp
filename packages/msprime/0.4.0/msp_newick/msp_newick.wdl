version 1.0

task MspNewick {
  input {
    Float? precision
    String history_file
  }
  command <<<
    msp newick \
      ~{history_file} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""}
  >>>
  parameter_meta {
    precision: "The number of decimal places in branch lengths\\n"
    history_file: "The msprime history file in HDF5 format"
  }
  output {
    File out_stdout = stdout()
  }
}