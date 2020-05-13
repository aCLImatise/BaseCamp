version 1.0

task Poller.py {
  input {
    String checkCheckRunCompleteFile
  }
  command <<<
    poller.py \
      ~{if defined(checkCheckRunCompleteFile) then ("--check_run_complete_file " +  '"' + checkCheckRunCompleteFile + '"') else ""}
  >>>
}