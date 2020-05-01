version 1.0

task AnviScriptFilterFastaByBlast {
  input {
    String fastFastAFile
    File outputOutputFile
    String bB
    String outOutFmt
    String thresholdThreshold
    Boolean justJustDoIt
  }
  command <<<
    anvi-script-filter-fasta-by-blast \
      ~{if defined(fastFastAFile) then ("--fasta-file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(outOutFmt) then ("--outfmt " +  '"' + outOutFmt + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}