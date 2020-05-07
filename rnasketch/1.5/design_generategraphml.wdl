version 1.0

task DesignGenerategraphml.py {
  input {
    Boolean inputInput
    File fileFile
    String outputOutput
  }
  command <<<
    design-generategraphml.py \
      ~{true="--input" false="" inputInput} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}