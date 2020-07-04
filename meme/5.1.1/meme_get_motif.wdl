version 1.0

task MemeGetMotif {
  input {
    String? id
    Boolean? match_alternate_i
    Boolean? i_a
    Boolean? rc
    Boolean? all
    String? meme_file
  }
  command <<<
    meme-get-motif \
      ~{meme_file} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{true="-a" false="" match_alternate_i} \
      ~{true="-ia" false="" i_a} \
      ~{true="-rc" false="" rc} \
      ~{true="-all" false="" all}
  >>>
  parameter_meta {
    id: "id of motif to extract from the MEME file"
    match_alternate_i: "match alternate id instead of id"
    i_a: "match either id or alternate id"
    rc: "reverse complement motifs (assuming alphabet allows)"
    all: "get all motifs in the MEME file"
    meme_file: ""
  }
}