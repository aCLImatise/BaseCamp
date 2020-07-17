version 1.0

task Verifybamid2 {
  input {
    Boolean? bam_file
    Boolean? pile_up_file
    Boolean? reference
    Boolean? svd_prefix
    Boolean? var_output
    Boolean? ud_path
    Boolean? bed_path
  }
  command <<<
    verifybamid2 \
      ~{true="--BamFile" false="" bam_file} \
      ~{true="--PileupFile" false="" pile_up_file} \
      ~{true="--Reference" false="" reference} \
      ~{true="--SVDPrefix" false="" svd_prefix} \
      ~{true="--Output" false="" var_output} \
      ~{true="--UDPath" false="" ud_path} \
      ~{true="--BedPath" false="" bed_path}
  >>>
  parameter_meta {
    bam_file: "[Empty],"
    pile_up_file: "[Empty],"
    reference: "[Empty],"
    svd_prefix: "[/tmp/tmp9ljwxmgo/share/verifybamid2-1.0.6-0/resource/1000g.100k.b38.vcf.gz.dat],"
    var_output: "[result]"
    ud_path: "[Empty], --MeanPath [Empty],"
    bed_path: "[Empty]"
  }
}