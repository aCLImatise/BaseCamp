version 1.0

task SpadesConvertBinToFasta {
  input {
    File prefixPrefix
    File infoInfoFile
    File outputOutputFile
  }
  command <<<
    spades-convert-bin-to-fasta \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(infoInfoFile) then ("--info_file " +  '"' + infoInfoFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}