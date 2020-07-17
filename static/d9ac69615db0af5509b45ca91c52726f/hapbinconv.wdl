version 1.0

task Hapbinconv {
  input {
    Boolean? hap
    Boolean? out
  }
  command <<<
    hapbinconv \
      ~{true="--hap" false="" hap} \
      ~{true="--out" false="" out}
  >>>
  parameter_meta {
    hap: "ASCII Hap file"
    out: "Binary output file"
  }
}