version 1.0

task SmofTranslate {
  input {
    Boolean? from_start
    Boolean? all_frames
    Boolean? cds
    String input_fasta_default
  }
  command <<<
    smof translate \
      ~{input_fasta_default} \
      ~{if (from_start) then "--from-start" else ""} \
      ~{if (all_frames) then "--all-frames" else ""} \
      ~{if (cds) then "--cds" else ""}
  >>>
  parameter_meta {
    from_start: "Require each product begin with a start codon"
    all_frames: "Translate in all frames, keep longest"
    cds: "Write the DNA coding sequence"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}