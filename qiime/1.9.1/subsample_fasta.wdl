version 1.0

task SubsampleFasta.py {
  input {
    String inputInputFastAFp
    String percentPercentSubsample
  }
  command <<<
    subsample_fasta.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(percentPercentSubsample) then ("--percent_subsample " +  '"' + percentPercentSubsample + '"') else ""}
  >>>
}