version 1.0

task DitasicMapping.py {
  input {
    Int lengthLength
    String indexIndex
    String tempTemp
  }
  command <<<
    ditasic_mapping.py \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""}
  >>>
}