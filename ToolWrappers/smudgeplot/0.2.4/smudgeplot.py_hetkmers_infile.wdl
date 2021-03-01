version 1.0

task SmudgeplotpyHetkmersInfile {
  input {
    Boolean? middle
    String? o
  }
  command <<<
    smudgeplot_py hetkmers infile \
      ~{if (middle) then "--middle" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smudgeplot:0.2.4--py38r40h516909a_0"
  }
  parameter_meta {
    middle: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}