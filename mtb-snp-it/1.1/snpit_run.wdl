version 1.0

task SnpitRun.py {
  input {
    String inputInput
  }
  command <<<
    snpit-run.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""}
  >>>
}