version 1.0

task BcftoolsConsensus {
  input {
    String? sample
    File? chain
    String? absent
    String? exclude
    File? fast_a_ref
    Int? haplotype
    String? include
    Boolean? iupac_codes
    String? mark_del
    String? mark_ins
    String? mark_snv
    File? mask
    String? mask_with
    String? missing
    File? write_output_file
    String? prefix
    File file_dot_vcf_do_tgz
  }
  command <<<
    bcftools consensus \
      ~{file_dot_vcf_do_tgz} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(absent) then ("--absent " +  '"' + absent + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if defined(haplotype) then ("--haplotype " +  '"' + haplotype + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if (iupac_codes) then "--iupac-codes" else ""} \
      ~{if defined(mark_del) then ("--mark-del " +  '"' + mark_del + '"') else ""} \
      ~{if defined(mark_ins) then ("--mark-ins " +  '"' + mark_ins + '"') else ""} \
      ~{if defined(mark_snv) then ("--mark-snv " +  '"' + mark_snv + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_with) then ("--mask-with " +  '"' + mask_with + '"') else ""} \
      ~{if defined(missing) then ("--missing " +  '"' + missing + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.12--h3f113a9_0"
  }
  parameter_meta {
    sample: "apply variants of the given sample"
    chain: "write a chain file for liftover"
    absent: "replace positions absent from VCF with CHAR"
    exclude: "exclude sites for which the expression is true (see man page for details)"
    fast_a_ref: "reference sequence in fasta format"
    haplotype: "choose which allele to use from the FORMAT/GT field, note\\nthe codes are case-insensitive:\\n1: first allele from GT, regardless of phasing\\n2: second allele from GT, regardless of phasing\\nR: REF allele in het genotypes\\nA: ALT allele\\nI: IUPAC code for all genotypes\\nLR,LA: longer allele and REF/ALT if equal length\\nSR,SA: shorter allele and REF/ALT if equal length\\n1pIu,2pIu: first/second allele for phased and IUPAC code for unphased GTs"
    include: "select sites for which the expression is true (see man page for details)"
    iupac_codes: "output variants in the form of IUPAC ambiguity codes"
    mark_del: "instead of removing sequence, insert CHAR for deletions"
    mark_ins: "|lc           highlight insertions in uppercase (uc) or lowercase (lc), leaving the rest as is"
    mark_snv: "|lc           highlight substitutions in uppercase (uc) or lowercase (lc), leaving the rest as is"
    mask: "replace regions according to the next --mask-with option. The default is --mask-with N"
    mask_with: "|uc|lc     replace with CHAR (skips overlapping variants); change to uppercase (uc) or lowercase (lc)"
    missing: "output CHAR instead of skipping a missing genotype \\\"./.\\\""
    write_output_file: "write output to a file [standard output]"
    prefix: "prefix to add to output sequence names"
    file_dot_vcf_do_tgz: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}