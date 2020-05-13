version 1.0

task Lumpy {
  input {
    Boolean gG
    Boolean eE
    Boolean wW
    Boolean mwMw
    Boolean mswMsw
    Boolean ttTt
    Boolean xX
    Boolean tT
    Boolean pP
    Boolean bB
    Boolean srSr
    Boolean pePe
    Boolean bedBedPe
  }
  command <<<
    lumpy \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-w" false="" wW} \
      ~{true="-mw" false="" mwMw} \
      ~{true="-msw" false="" mswMsw} \
      ~{true="-tt" false="" ttTt} \
      ~{true="-x" false="" xX} \
      ~{true="-t" false="" tT} \
      ~{true="-P" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="-sr" false="" srSr} \
      ~{true="-pe" false="" pePe} \
      ~{true="-bedpe" false="" bedBedPe}
  >>>
}