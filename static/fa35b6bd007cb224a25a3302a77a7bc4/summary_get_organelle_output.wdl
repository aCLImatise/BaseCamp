version 1.0

task SummaryGetOrganelleOutput.py {
  input {
    String oO
    String? listListOfSampleFolders
  }
  command <<<
    summary_get_organelle_output.py \
      ~{listListOfSampleFolders} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}