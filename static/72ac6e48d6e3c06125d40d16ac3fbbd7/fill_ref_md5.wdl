version 1.0

task FillRefMd5 {
  input {
    File? dictionary
    Boolean? info
    File? refseq
    String in_dot_vcf_do_tgz
    String out_dot_vcf_do_tgz
  }
  command <<<
    fill-ref-md5 \
      ~{in_dot_vcf_do_tgz} \
      ~{out_dot_vcf_do_tgz} \
      ~{if defined(dictionary) then ("--dictionary " +  '"' + dictionary + '"') else ""} \
      ~{true="--info" false="" info} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""}
  >>>
  parameter_meta {
    dictionary: "Where to read/write computed MD5s. Opened in append mode, existing records are not touched."
    info: "<AS:xx,SP:xx,TX:xx>      Optional info on reference assembly (AS), species (SP), taxonomy (TX)"
    refseq: "The reference sequence in fasta format indexed by samtools faidx"
    in_dot_vcf_do_tgz: ""
    out_dot_vcf_do_tgz: ""
  }
}