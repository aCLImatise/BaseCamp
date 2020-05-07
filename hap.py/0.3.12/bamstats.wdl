version 1.0

task Bamstats.py {
  input {
    String outputOutput
  }
  command <<<
    bamstats.py \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}