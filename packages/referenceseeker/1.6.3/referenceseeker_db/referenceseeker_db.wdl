version 1.0

task ReferenceseekerDb {
  command <<<
    referenceseeker_db
  >>>
  output {
    File out_stdout = stdout()
  }
}