version 1.0

task Elink {
  input {
    Boolean? related
    Boolean? target
    Boolean? name
    Boolean? db
    Boolean? id
    Boolean? cmd
    Boolean? holding
    Boolean? cited
    Boolean? cites
    Boolean? batch
    String neighbor
    String neighbor_score
    String a_check
    String n_check
    String l_check
    String l_links
    String l_links_lib
    String pr_links
  }
  command <<<
    elink \
      ~{neighbor} \
      ~{neighbor_score} \
      ~{a_check} \
      ~{n_check} \
      ~{l_check} \
      ~{l_links} \
      ~{l_links_lib} \
      ~{pr_links} \
      ~{if (related) then "-related" else ""} \
      ~{if (target) then "-target" else ""} \
      ~{if (name) then "-name" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (cmd) then "-cmd" else ""} \
      ~{if (holding) then "-holding" else ""} \
      ~{if (cited) then "-cited" else ""} \
      ~{if (cites) then "-cites" else ""} \
      ~{if (batch) then "-batch" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    related: "Neighbors in same database"
    target: "Links in different database"
    name: "Link name (e.g., pubmed_protein_refseq, pubmed_pubmed_citedin, pubmed_pubmed_refs)"
    db: "Database name"
    id: "Unique identifier(s)"
    cmd: "Command type (returns eLinkResult XML)"
    holding: "Name of LinkOut provider"
    cited: "References to this paper"
    cites: "Publication reference list"
    batch: "Bypass Entrez history mechanism"
    neighbor: "Neighbors or links"
    neighbor_score: "Neighbors with computed similarity scores"
    a_check: "All links available"
    n_check: "Existence of neighbors"
    l_check: "Existence of external links (LinkOuts)"
    l_links: "Non-library LinkOut providers"
    l_links_lib: "All LinkOut providers"
    pr_links: "Primary LinkOut provider"
  }
  output {
    File out_stdout = stdout()
  }
}