version 1.0

task BcftoolsConsensus {
  input {
    File? chain
    String? exclude
    File? fast_a_ref
    String? haplotype
    String? include
    Boolean? iupac_codes
    File? mask
    String? missing
    File? write_output_file
    String? prefix
    String? sample
    File file_dot_vcf_do_tgz
  }
  command <<<
    bcftools consensus \
      ~{file_dot_vcf_do_tgz} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if defined(haplotype) then ("--haplotype " +  '"' + haplotype + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{true="--iupac-codes" false="" iupac_codes} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(missing) then ("--missing " +  '"' + missing + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""}
  >>>
  parameter_meta {
    chain: "write a chain file for liftover"
    exclude: "exclude sites for which the expression is true (see man page for details)"
    fast_a_ref: "reference sequence in fasta format"
    haplotype: "choose which allele to use from the FORMAT/GT field, note the codes are case-insensitive: 1: first allele from GT, regardless of phasing 2: second allele from GT, regardless of phasing R: REF allele in het genotypes A: ALT allele LR,LA: longer allele and REF/ALT if equal length SR,SA: shorter allele and REF/ALT if equal length 1pIu,2pIu: first/second allele for phased and IUPAC code for unphased GTs"
    include: "select sites for which the expression is true (see man page for details)"
    iupac_codes: "output variants in the form of IUPAC ambiguity codes"
    mask: "replace regions with N"
    missing: "output <char> instead of skipping the missing genotypes"
    write_output_file: "write output to a file [standard output]"
    prefix: "prefix to add to output sequence names"
    sample: "apply variants of the given sample"
    file_dot_vcf_do_tgz: ""
  }
}