version 1.0

task ConvertCdnaMatchGff3.py {
  input {
    String script
    String to
    String convert
    String var_3
    String cdna_match
    String gff_three
    String from
    String exonerate
    Int into
    String either
    String var_10
    String match_slash_match_part
    String or
    String var_13
    String gtf
    File file_dot
  }
  command <<<
    convert_cdna_match_gff3.py \
      ~{script} \
      ~{to} \
      ~{convert} \
      ~{var_3} \
      ~{cdna_match} \
      ~{gff_three} \
      ~{from} \
      ~{exonerate} \
      ~{into} \
      ~{either} \
      ~{var_10} \
      ~{match_slash_match_part} \
      ~{or} \
      ~{var_13} \
      ~{gtf} \
      ~{file_dot}
  >>>
  parameter_meta {
    script: ""
    to: ""
    convert: ""
    var_3: ""
    cdna_match: ""
    gff_three: ""
    from: ""
    exonerate: ""
    into: ""
    either: ""
    var_10: ""
    match_slash_match_part: ""
    or: ""
    var_13: ""
    gtf: ""
    file_dot: ""
  }
}