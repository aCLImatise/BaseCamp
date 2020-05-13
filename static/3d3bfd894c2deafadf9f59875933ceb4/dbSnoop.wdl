version 1.0

task DbSnoop {
  input {
    String unsplitUnsplit
    String noNoNumberCommas
    String justJustSchema
    String skipSkipTable
    String profileProfile
    String? databaseDatabase
    String? outputOutput
  }
  command <<<
    dbSnoop \
      ~{databaseDatabase} \
      ~{if defined(unsplitUnsplit) then ("-unsplit " +  '"' + unsplitUnsplit + '"') else ""} \
      ~{if defined(noNoNumberCommas) then ("-noNumberCommas " +  '"' + noNoNumberCommas + '"') else ""} \
      ~{if defined(justJustSchema) then ("-justSchema " +  '"' + justJustSchema + '"') else ""} \
      ~{if defined(skipSkipTable) then ("-skipTable " +  '"' + skipSkipTable + '"') else ""} \
      ~{if defined(profileProfile) then ("-profile " +  '"' + profileProfile + '"') else ""} \
      ~{outputOutput}
  >>>
}