version 1.0

task VcfConvert {
  input {
    File refseqRefseq
  }
  command <<<
    vcf-convert \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""}
  >>>
}