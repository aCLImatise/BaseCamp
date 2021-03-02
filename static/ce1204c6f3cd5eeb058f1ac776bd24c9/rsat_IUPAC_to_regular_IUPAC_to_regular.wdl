version 1.0

task RsatIUPACtoregularIUPACtoregular {
  input {
    Boolean? age
  }
  command <<<
    rsat IUPAC_to_regular IUPAC_to_regular \
      ~{if (age) then "--u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    age: "[cg]age"
  }
  output {
    File out_stdout = stdout()
  }
}