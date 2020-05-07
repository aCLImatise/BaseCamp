version 1.0

task CovermGenome {
  input {
    String singleSingle
  }
  command <<<
    coverm genome \
      ~{if defined(singleSingle) then ("--single " +  '"' + singleSingle + '"') else ""}
  >>>
}