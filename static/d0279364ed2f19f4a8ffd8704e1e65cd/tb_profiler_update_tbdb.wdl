version 1.0

task TbProfilerUpdateTbdb {
  input {
    String? seqname
  }
  command <<<
    tb-profiler update_tbdb \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""}
  >>>
  parameter_meta {
    seqname: "Mutation panel name (default: Chromosome)"
  }
}