version 1.0

task BcbioFastqUmiPrep.pySingle {
  input {
    String coresCores
    String tag1Tag1
    String tag2Tag2
    String? outOutBase
    String? readRead1Fq
    String? readRead2Fq
    String? umiUmiFq
  }
  command <<<
    bcbio_fastq_umi_prep.py single \
      ~{outOutBase} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(tag1Tag1) then ("--tag1 " +  '"' + tag1Tag1 + '"') else ""} \
      ~{if defined(tag2Tag2) then ("--tag2 " +  '"' + tag2Tag2 + '"') else ""} \
      ~{readRead1Fq} \
      ~{readRead2Fq} \
      ~{umiUmiFq}
  >>>
}