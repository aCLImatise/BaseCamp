version 1.0

task SmudgeplotpyHetkmersInfile {
  input {
    String? pos
    String? o
  }
  command <<<
    smudgeplot_py hetkmers infile \
      ~{if defined(pos) then ("--pos " +  '"' + pos + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smudgeplot_rn:0.2.4_RN--py39r40h516909a_0"
  }
  parameter_meta {
    pos: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}