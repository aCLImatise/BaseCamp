version 1.0

task RandomizeFastq {
  input {
    Boolean forceForce
    String bufferBufferSize
    String? fastFastQ
  }
  command <<<
    randomize_fastq \
      ~{fastFastQ} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(bufferBufferSize) then ("--buffersize " +  '"' + bufferBufferSize + '"') else ""}
  >>>
}