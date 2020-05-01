version 1.0

task EDTARaw.pl {
  input {
    Boolean genomeGenome
    Boolean speciesSpecies
    Boolean typeType
    Boolean overwriteOverwrite
    Boolean convertConvertSeqName
    Boolean threadsThreads
  }
  command <<<
    EDTA_raw.pl \
      ~{true="--genome" false="" genomeGenome} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--type" false="" typeType} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{true="--convert_seq_name" false="" convertConvertSeqName} \
      ~{true="--threads" false="" threadsThreads}
  >>>
}