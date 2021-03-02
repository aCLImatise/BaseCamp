version 1.0

task RsatIUPACtoregularUtil {
  input {
    Boolean? age
  }
  command <<<
    rsat IUPAC_to_regular util \
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