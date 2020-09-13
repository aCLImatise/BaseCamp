version 1.0

task HaphpipeAssemble01 {
  input {
    Int? read_one
    Int? read_two
    String? reference_fast_a
    String? reference_gtf
    String? samp_id
    String outdir
  }
  command <<<
    haphpipe_assemble_01 \
      ~{read_one} \
      ~{read_two} \
      ~{reference_fast_a} \
      ~{reference_gtf} \
      ~{samp_id} \
      ~{outdir}
  >>>
  parameter_meta {
    read_one: ""
    read_two: ""
    reference_fast_a: ""
    reference_gtf: ""
    samp_id: ""
    outdir: ""
  }
  output {
    File out_stdout = stdout()
  }
}