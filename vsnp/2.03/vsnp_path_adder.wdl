version 1.0

task VsnpPathAdder.py {
  input {
    Directory? cwd
    Boolean? show
    Boolean? v
    String prog
  }
  command <<<
    vsnp_path_adder.py \
      ~{prog} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{true="--show" false="" show} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    cwd: "Absolute directory path to be added to find reference option files."
    show: "Show available directories."
    v: ""
    prog: ""
  }
}