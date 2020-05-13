version 1.0

task JeDebarcode {
  input {
    String pairedPaired
    String pairedPaired
    String singleSingle
    String pairedPaired
    String singleSingle
    String theThe
    String theThe
    String theThe
    String? sampleSample1
  }
  command <<<
    je debarcode \
      ~{sampleSample1} \
      ~{if defined(pairedPaired) then ("- paired " +  '"' + pairedPaired + '"') else ""} \
      ~{if defined(pairedPaired) then ("- paired " +  '"' + pairedPaired + '"') else ""} \
      ~{if defined(singleSingle) then ("- single " +  '"' + singleSingle + '"') else ""} \
      ~{if defined(pairedPaired) then ("- paired " +  '"' + pairedPaired + '"') else ""} \
      ~{if defined(singleSingle) then ("- single " +  '"' + singleSingle + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""}
  >>>
}