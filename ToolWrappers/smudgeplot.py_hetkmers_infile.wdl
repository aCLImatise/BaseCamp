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
  parameter_meta {
    middle: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}