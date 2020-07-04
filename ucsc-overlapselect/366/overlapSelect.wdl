version 1.0

task OverlapSelect {
  input {
    File? dropped
    String? verbose
  }
  command <<<
    overlapSelect \
      ~{if defined(dropped) then ("-dropped " +  '"' + dropped + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    dropped: "- output rows that were dropped to this file."
    verbose: "- verbose > 1 prints some details,"
  }
}