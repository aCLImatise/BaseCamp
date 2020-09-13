version 1.0

task Hicup2fithic {
  input {
    Boolean? digest
    Boolean? maximum
    Boolean? minimum
  }
  command <<<
    hicup2fithic \
      ~{if (digest) then "--digest" else ""} \
      ~{if (maximum) then "--maximum" else ""} \
      ~{if (minimum) then "--minimum" else ""}
  >>>
  parameter_meta {
    digest: "HiCUP Digester generated digest file"
    maximum: "The maximum allowed distance separation (bps) between contacts\\n(selecting this option also removes trans contacts)"
    minimum: "The maximum allowed distance separation (bps) between contacts\\n(selecting this option also removes trans contacts)"
  }
  output {
    File out_stdout = stdout()
  }
}