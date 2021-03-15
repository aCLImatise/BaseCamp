version 1.0

task RbtBamdepth {
  input {
    Int? excl_flags
    Int? incl_flags
    Int? max_read_length
    Int? min_mapq
  }
  command <<<
    rbt bam_depth \
      ~{if defined(excl_flags) then ("--excl-flags " +  '"' + excl_flags + '"') else ""} \
      ~{if defined(incl_flags) then ("--incl-flags " +  '"' + incl_flags + '"') else ""} \
      ~{if defined(max_read_length) then ("--max-read-length " +  '"' + max_read_length + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.19.5--heda7bfa_0"
  }
  parameter_meta {
    excl_flags: "Skip reads with mask bits set [UNMAP, SECONDARY, QCFAIL, DUP] [default: 1796]"
    incl_flags: "Skip reads with mask bits unset [] [default: 0]"
    max_read_length: "Maximum read length to consider. This affects the speed of the involved pileup. Reads longer than this\\nlength can be missed when calculating the depth [default: 1000]"
    min_mapq: "Minimum mapping quality [default: 0]"
  }
  output {
    File out_stdout = stdout()
  }
}