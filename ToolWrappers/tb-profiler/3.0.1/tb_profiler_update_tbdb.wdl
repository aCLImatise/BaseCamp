version 1.0

task TbprofilerUpdateTbdb {
  input {
    String? seqname
  }
  command <<<
    tb_profiler update_tbdb \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:3.0.1--pypyh3252c3a_0"
  }
  parameter_meta {
    seqname: "Mutation panel name (default: Chromosome)"
  }
  output {
    File out_stdout = stdout()
  }
}