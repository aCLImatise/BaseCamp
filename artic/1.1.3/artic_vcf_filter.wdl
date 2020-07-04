version 1.0

task ArticVcfFilter {
  input {
    Boolean? nano_polish
    Boolean? medaka
    Boolean? longshot
  }
  command <<<
    artic_vcf_filter \
      ~{true="--nanopolish" false="" nano_polish} \
      ~{true="--medaka" false="" medaka} \
      ~{true="--longshot" false="" longshot}
  >>>
  parameter_meta {
    nano_polish: ""
    medaka: ""
    longshot: ""
  }
}