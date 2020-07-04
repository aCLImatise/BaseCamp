version 1.0

task AnviShowCollectionsAndBins {
  input {
    String? pan_or_profile_db
  }
  command <<<
    anvi-show-collections-and-bins \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""}
  >>>
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes database in appropriate contexts)."
  }
}