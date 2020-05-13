version 1.0

task TgtConcatenateTextgrids.py {
  input {
    Array[String]+ inputInputFiles
    String outputOutputFiles
    String encodingEncoding
    String typeType
    Boolean absoluteAbsoluteTime
  }
  command <<<
    tgt-concatenate-textgrids.py \
      ~{if defined(inputInputFiles) then ("--input-files " +  '"' + inputInputFiles + '"') else ""} \
      ~{if defined(outputOutputFiles) then ("--output-files " +  '"' + outputOutputFiles + '"') else ""} \
      ~{if defined(encodingEncoding) then ("--encoding " +  '"' + encodingEncoding + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--absolute-time" false="" absoluteAbsoluteTime}
  >>>
}