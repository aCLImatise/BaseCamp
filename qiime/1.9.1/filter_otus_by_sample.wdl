version 1.0

task FilterOtusBySample.py {
  input {
    String otuOtuMapFp
    String inputInputFastAFp
    String samplesSamplesToExtract
  }
  command <<<
    filter_otus_by_sample.py \
      ~{if defined(otuOtuMapFp) then ("--otu_map_fp " +  '"' + otuOtuMapFp + '"') else ""} \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(samplesSamplesToExtract) then ("--samples_to_extract " +  '"' + samplesSamplesToExtract + '"') else ""}
  >>>
}