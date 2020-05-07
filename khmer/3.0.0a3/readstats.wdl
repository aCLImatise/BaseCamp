version 1.0

task Readstats.py {
  input {
    Boolean infoInfo
    File outputOutput
    Boolean csvCsv
  }
  command <<<
    readstats.py \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--csv" false="" csvCsv}
  >>>
}