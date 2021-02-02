version 1.0

task AssessHomopolymersAnalyse {
  input {
    String? o
  }
  command <<<
    assess_homopolymers analyse \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}