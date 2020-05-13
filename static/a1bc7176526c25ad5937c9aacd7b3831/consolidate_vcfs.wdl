version 1.0

task ConsolidateVcfs.pl {
  input {
    Boolean snvSnvAbundanceRatio
  }
  command <<<
    consolidate_vcfs.pl \
      ~{true="--snv-abundance-ratio" false="" snvSnvAbundanceRatio}
  >>>
}