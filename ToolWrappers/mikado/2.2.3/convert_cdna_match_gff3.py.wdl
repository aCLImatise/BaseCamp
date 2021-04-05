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
    String match
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
      ~{match}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0"
  }
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
    match: ""
  }
  output {
    File out_stdout = stdout()
  }
}