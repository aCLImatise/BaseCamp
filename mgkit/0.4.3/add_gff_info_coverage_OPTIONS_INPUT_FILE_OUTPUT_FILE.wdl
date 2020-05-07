version 1.0

task AddGffInfoCoverageOPTIONSINPUTFILEOUTPUTFILE {
  input {
    String sampleSampleAlignment
  }
  command <<<
    add-gff-info coverage OPTIONS INPUT_FILE OUTPUT_FILE \
      ~{if defined(sampleSampleAlignment) then ("--sample-alignment " +  '"' + sampleSampleAlignment + '"') else ""}
  >>>
}