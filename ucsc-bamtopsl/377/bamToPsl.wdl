version 1.0

task BamToPsl {
  input {
    String? dots
    String in_dot_bam
    String out_dot_psl
  }
  command <<<
    bamToPsl \
      ~{in_dot_bam} \
      ~{out_dot_psl} \
      ~{if defined(dots) then ("-dots " +  '"' + dots + '"') else ""}
  >>>
  parameter_meta {
    dots: "- output progress dot(.) every N alignments processed"
    in_dot_bam: ""
    out_dot_psl: ""
  }
}