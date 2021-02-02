version 1.0

task Shannonpy {
  input {
    Directory? o
  }
  command <<<
    shannon_py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}