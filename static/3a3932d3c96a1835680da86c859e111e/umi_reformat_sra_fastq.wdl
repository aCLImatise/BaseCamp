version 1.0

task UmiReformatSraFastq {
  input {
    Boolean debugDebug
  }
  command <<<
    umi_reformat_sra_fastq \
      ~{true="--debug" false="" debugDebug}
  >>>
}