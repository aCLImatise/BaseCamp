version 1.0

task HaphpipeAssemble02 {
  input {
    Int? read_one
    Int? read_two
    String? amplicons_fast_a
    String? samp_id
    String outdir
  }
  command <<<
    haphpipe_assemble_02 \
      ~{read_one} \
      ~{read_two} \
      ~{amplicons_fast_a} \
      ~{samp_id} \
      ~{outdir}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haphpipe:1.0.3--py_0"
  }
  parameter_meta {
    read_one: ""
    read_two: ""
    amplicons_fast_a: ""
    samp_id: ""
    outdir: ""
  }
  output {
    File out_stdout = stdout()
  }
}