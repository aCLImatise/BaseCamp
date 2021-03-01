version 1.0

task Obisilva {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    Boolean? ssu
    Boolean? lsu
    Boolean? parc
    Boolean? ref
    Boolean? nr
    Boolean? trunc
    Directory? local_db
    Boolean? _mintaxidminimal_taxid
  }
  command <<<
    obisilva \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if (ssu) then "--ssu" else ""} \
      ~{if (lsu) then "--lsu" else ""} \
      ~{if (parc) then "--parc" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (nr) then "--nr" else ""} \
      ~{if (trunc) then "--trunc" else ""} \
      ~{if defined(local_db) then ("--localdb " +  '"' + local_db + '"') else ""} \
      ~{if (_mintaxidminimal_taxid) then "-m" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    ssu: "specify that you are interested in the SSU database"
    lsu: "specify that you are interested in the LSU database"
    parc: "specify that you are interested in the parc version of\\nthe database"
    ref: "specify that you are interested in the reference\\nversion of the database"
    nr: "specify that you are interested in the non redundant\\nversion of the database"
    trunc: "specify that you are interested in the truncated\\nversion of database"
    local_db: "Local copy of the files located in the specified\\ndirectory will be used instead of those present on the\\nARB-Silva web site"
    _mintaxidminimal_taxid: "####, --min-taxid=####\\nminimal taxid for the species taxid\\n"
  }
  output {
    File out_stdout = stdout()
  }
}