version 1.0

task HaphpipeAssemble02 {
  input {
    String? read_one
    String? read_two
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
  parameter_meta {
    read_one: ""
    read_two: ""
    amplicons_fast_a: ""
    samp_id: ""
    outdir: ""
  }
}