version 1.0

task Lsg {
  input {
    Boolean? basename
    Boolean? gsa
    Boolean? tau
    Boolean? cyc_num
    String? read_length
  }
  command <<<
    lsg \
      ~{true="--basename" false="" basename} \
      ~{true="--GSA" false="" gsa} \
      ~{true="--TAU" false="" tau} \
      ~{true="--CycNum" false="" cyc_num} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""}
  >>>
  parameter_meta {
    basename: "<basename>     # (required)"
    gsa: "<GSAFilename>  # (default: '<basename>.pairSA')"
    tau: "<TAU>          # (default: 0)"
    cyc_num: "<CycNum>       # (default: 0)"
    read_length: "# 0 if unknown or not fixed (default: 0)"
  }
}