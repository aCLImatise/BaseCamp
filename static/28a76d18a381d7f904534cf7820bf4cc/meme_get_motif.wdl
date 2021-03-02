version 1.0

task Memegetmotif {
  input {
    File? id
    Boolean? match_alternate_d
    Boolean? i_a
    Boolean? rc
    Boolean? all
    File? meme_file
  }
  command <<<
    meme_get_motif \
      ~{meme_file} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if (match_alternate_d) then "-a" else ""} \
      ~{if (i_a) then "-ia" else ""} \
      ~{if (rc) then "-rc" else ""} \
      ~{if (all) then "-all" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id: "id of motif to extract from the MEME file"
    match_alternate_d: "match alternate id instead of id"
    i_a: "match either id or alternate id"
    rc: "reverse complement motifs (assuming alphabet allows)"
    all: "get all motifs in the MEME file"
    meme_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}