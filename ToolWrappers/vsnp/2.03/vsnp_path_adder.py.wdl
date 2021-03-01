version 1.0

task VsnpPathAdderpy {
  input {
    Directory? cwd
    Boolean? show
    Boolean? v
    String prog
  }
  command <<<
    vsnp_path_adder_py \
      ~{prog} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{if (show) then "--show" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cwd: "Absolute directory path to be added to find reference\\noption files."
    show: "Show available directories."
    v: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}