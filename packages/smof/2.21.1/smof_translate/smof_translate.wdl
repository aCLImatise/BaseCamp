version 1.0

task SmofTranslate {
  input {
    Boolean? from_start
    Boolean? all_frames
    Boolean? cds
    String input_fasta_sequence
  }
  command <<<
    smof translate \
      ~{input_fasta_sequence} \
      ~{if (from_start) then "--from-start" else ""} \
      ~{if (all_frames) then "--all-frames" else ""} \
      ~{if (cds) then "--cds" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    from_start: "Require each product begin with a start codon"
    all_frames: "Translate in all frames, keep longest"
    cds: "Write the DNA coding sequence"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}