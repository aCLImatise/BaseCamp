version 1.0

task RbtBamdepth {
  input {
    Int? excl_flags
    Int? incl_flags
    Int? maximum_read_length
    Int? min_mapq
  }
  command <<<
    rbt bam_depth \
      ~{if defined(excl_flags) then ("--excl-flags " +  '"' + excl_flags + '"') else ""} \
      ~{if defined(incl_flags) then ("--incl-flags " +  '"' + incl_flags + '"') else ""} \
      ~{if defined(maximum_read_length) then ("-m " +  '"' + maximum_read_length + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    excl_flags: "Skip reads with mask bits set [UNMAP, SECONDARY, QCFAIL, DUP]."
    incl_flags: "Skip reads with mask bits unset []."
    maximum_read_length: "Maximum read length to consider. This affects the speed of the involved pileup. Reads\\nlonger than this length can be missed when calculating the depth. [default: 1000]"
    min_mapq: "Minimum mapping quality. [default: 0]"
  }
  output {
    File out_stdout = stdout()
  }
}