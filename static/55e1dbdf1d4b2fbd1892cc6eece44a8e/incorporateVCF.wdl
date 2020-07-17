version 1.0

task IncorporateVCF.py {
  input {
    String? threads_to_run
    Boolean? fasta_file_incorporate
    Boolean? file_write_file
    String? vcf
    Boolean? no_homozygous
    Boolean? heterozygous
    Boolean? no_snps
    Boolean? dels
    Boolean? ins
    String? individual
    Boolean? append_chromosome
    String? fast_a
    String? out
  }
  command <<<
    incorporateVCF.py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{true="-f" false="" fasta_file_incorporate} \
      ~{true="-o" false="" file_write_file} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{true="--no-homozygous" false="" no_homozygous} \
      ~{true="--heterozygous" false="" heterozygous} \
      ~{true="--no-snps" false="" no_snps} \
      ~{true="--dels" false="" dels} \
      ~{true="--ins" false="" ins} \
      ~{if defined(individual) then ("--individual " +  '"' + individual + '"') else ""} \
      ~{true="--append-chromosome" false="" append_chromosome}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    fasta_file_incorporate: "[FASTA], --fasta [FASTA] The fasta file to incorporate changes into."
    file_write_file: "[OUT], --out [OUT] The file to write resulting fasta file to."
    vcf: "The VCF file to use."
    no_homozygous: "Don't include homozygous variants (default to include)"
    heterozygous: "Use heterozygous variants"
    no_snps: "Don't use SNPs (default to true)."
    dels: "Use Deletions."
    ins: "Use Insertions."
    individual: "The Individual to use."
    append_chromosome: "Should 'chr' be appended to the chromosome column?."
    fast_a: ""
    out: ""
  }
}