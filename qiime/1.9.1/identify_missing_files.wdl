version 1.0

task IdentifyMissingFiles.py {
  input {
    String expectedExpectedOutFp
  }
  command <<<
    identify_missing_files.py \
      ~{if defined(expectedExpectedOutFp) then ("--expected_out_fp " +  '"' + expectedExpectedOutFp + '"') else ""}
  >>>
}