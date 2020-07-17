version 1.0

task CrossMap.py {
  input {
    String gff
    String maf
    String vcf
    String wig
  }
  command <<<
    CrossMap.py \
      ~{gff} \
      ~{maf} \
      ~{vcf} \
      ~{wig}
  >>>
  parameter_meta {
    gff: "convert genome coordinate or annotation file in GFF or GTF format."
    maf: "convert genome coordinate file in MAF (mutation annotation format)."
    vcf: "convert genome coordinate file in VCF format."
    wig: "convert genome coordinate file in Wiggle, or bedGraph format."
  }
}