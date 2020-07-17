version 1.0

task FillFs {
  input {
    File? bed_mask
    Int? cluster
    Int? length
    String? mask_char
    File? refseq
    File? vcf_mask
    File file_dot_vcf
  }
  command <<<
    fill-fs \
      ~{file_dot_vcf} \
      ~{if defined(bed_mask) then ("--bed-mask " +  '"' + bed_mask + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(mask_char) then ("--mask-char " +  '"' + mask_char + '"') else ""} \
      ~{if defined(refseq) then ("--refseq " +  '"' + refseq + '"') else ""} \
      ~{if defined(vcf_mask) then ("--vcf-mask " +  '"' + vcf_mask + '"') else ""}
  >>>
  parameter_meta {
    bed_mask: "Regions to mask (tabix indexed), multiple files can be given"
    cluster: "Do self-masking of clustered variants within this range."
    length: "Flanking sequence length [100]"
    mask_char: "The character to use or \"lc\" for lowercase. This option must preceed -b, -v or -c in order to take effect. With multiple files works as a switch on the command line, see the example below [N]"
    refseq: "The reference sequence."
    vcf_mask: "Mask known variants in the flanking sequence, multiple files can be given (tabix indexed)"
    file_dot_vcf: ""
  }
}