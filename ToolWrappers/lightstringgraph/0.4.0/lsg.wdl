version 1.0

task Lsg {
  input {
    Boolean? basename
    Boolean? gsa
    Boolean? tau
    Boolean? cyc_num
    Int? read_length
  }
  command <<<
    lsg \
      ~{if (basename) then "--basename" else ""} \
      ~{if (gsa) then "--GSA" else ""} \
      ~{if (tau) then "--TAU" else ""} \
      ~{if (cyc_num) then "--CycNum" else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    basename: "<basename>     # (required)"
    gsa: "<GSAFilename>  # (default: '<basename>.pairSA')"
    tau: "<TAU>          # (default: 0)"
    cyc_num: "<CycNum>       # (default: 0)"
    read_length: "# 0 if unknown or not fixed (default: 0)"
  }
  output {
    File out_stdout = stdout()
  }
}