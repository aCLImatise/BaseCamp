version 1.0

task DRAMvpyAnnotate {
  input {
    String? v
    String? i
  }
  command <<<
    DRAM_v_py annotate \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}