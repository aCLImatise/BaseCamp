version 1.0

task TbprofilerUpdateTbdb {
  input {
    String? seqname
  }
  command <<<
    tb_profiler update_tbdb \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""}
  >>>
  parameter_meta {
    seqname: "Mutation panel name (default: Chromosome)"
  }
  output {
    File out_stdout = stdout()
  }
}