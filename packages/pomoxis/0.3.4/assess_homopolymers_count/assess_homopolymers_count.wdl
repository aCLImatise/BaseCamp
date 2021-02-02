version 1.0

task AssessHomopolymersCount {
  input {
    String? l
    String? o
  }
  command <<<
    assess_homopolymers count \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    l: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}