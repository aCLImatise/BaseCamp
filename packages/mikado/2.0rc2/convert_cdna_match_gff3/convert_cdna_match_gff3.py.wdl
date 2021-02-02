version 1.0

task ConvertCdnaMatchGff3py {
  input {
    String script
    String to
    String convert
    String a
    String cdna_match
    Int gff_three
    String from
    String exonerate
    String into
    String either
    String match_slash_match_part
    String or
    String gtf
    File file_dot
  }
  command <<<
    convert_cdna_match_gff3_py \
      ~{script} \
      ~{to} \
      ~{convert} \
      ~{a} \
      ~{cdna_match} \
      ~{gff_three} \
      ~{from} \
      ~{exonerate} \
      ~{into} \
      ~{either} \
      ~{match_slash_match_part} \
      ~{or} \
      ~{gtf} \
      ~{file_dot}
  >>>
  parameter_meta {
    script: ""
    to: ""
    convert: ""
    a: ""
    cdna_match: ""
    gff_three: ""
    from: ""
    exonerate: ""
    into: ""
    either: ""
    match_slash_match_part: ""
    or: ""
    gtf: ""
    file_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}