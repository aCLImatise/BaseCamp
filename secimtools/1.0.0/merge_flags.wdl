version 1.0

task MergeFlags.py {
  input {
    Array[String]+ inputInput
    Array[File]+ filenameFilename
    String flagFlagUniqid
    String outputOutput
  }
  command <<<
    merge_flags.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(filenameFilename) then ("--filename " +  '"' + filenameFilename + '"') else ""} \
      ~{if defined(flagFlagUniqid) then ("--flagUniqID " +  '"' + flagFlagUniqid + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}