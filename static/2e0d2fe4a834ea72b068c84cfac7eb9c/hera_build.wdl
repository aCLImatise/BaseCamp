version 1.0

task HeraBuild {
  input {
    Boolean fullFullIndex
    Boolean grch38Grch38
    Boolean fastFastA
    Boolean gtfGtf
    Boolean outdirOutdir
    Boolean fullFullIndex
    Boolean grch38Grch38
  }
  command <<<
    hera_build \
      ~{true="--full_index" false="" fullFullIndex} \
      ~{true="--grch38" false="" grch38Grch38} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--gtf" false="" gtfGtf} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--full_index" false="" fullFullIndex} \
      ~{true="--grch38" false="" grch38Grch38}
  >>>
}