version 1.0

task Vcfannotate {
  input {
    Boolean bedBed
    Boolean keyKey
    Boolean defaultDefault
    String? vcfVcfFile
  }
  command <<<
    vcfannotate \
      ~{vcfVcfFile} \
      ~{true="--bed" false="" bedBed} \
      ~{true="--key" false="" keyKey} \
      ~{true="--default" false="" defaultDefault}
  >>>
}