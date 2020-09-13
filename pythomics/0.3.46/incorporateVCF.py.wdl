version 1.0

task IncorporateVCFpy {
  input {
    String? threads_to_run
    Boolean? fasta_file_incorporate
    File? file_write_resulting
    File? vcf
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
    incorporateVCF_py \
      ~{fast_a} \
      ~{out} \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if (fasta_file_incorporate) then "-f" else ""} \
      ~{if (file_write_resulting) then "-o" else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if (no_homozygous) then "--no-homozygous" else ""} \
      ~{if (heterozygous) then "--heterozygous" else ""} \
      ~{if (no_snps) then "--no-snps" else ""} \
      ~{if (dels) then "--dels" else ""} \
      ~{if (ins) then "--ins" else ""} \
      ~{if defined(individual) then ("--individual " +  '"' + individual + '"') else ""} \
      ~{if (append_chromosome) then "--append-chromosome" else ""}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    fasta_file_incorporate: "[FASTA], --fasta [FASTA]\\nThe fasta file to incorporate changes into."
    file_write_resulting: "[OUT], --out [OUT]\\nThe file to write resulting fasta file to."
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
  output {
    File out_stdout = stdout()
    File out_file_write_resulting = "${in_file_write_resulting}"
  }
}