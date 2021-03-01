version 1.0

task Anvishowcollectionsandbins {
  input {
    String? pan_or_profile_db
  }
  command <<<
    anvi_show_collections_and_bins \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}