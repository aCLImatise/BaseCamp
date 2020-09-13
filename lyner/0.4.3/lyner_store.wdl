version 1.0

task LynerStore {
  input {
    Boolean? mode
    String? out
  }
  command <<<
    lyner store \
      ~{out} \
      ~{if (mode) then "--mode" else ""}
  >>>
  parameter_meta {
    mode: "[csv|pickle|auto]"
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}