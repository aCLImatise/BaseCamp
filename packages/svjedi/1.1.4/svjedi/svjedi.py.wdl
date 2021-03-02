version 1.0

task Svjedipy {
  input {
    File? vcf
    File? ref
    File? allele
    Int? threads
    File? genotype_output_file
    String? dover
    Int? d_end
    Int? min_support
    Boolean? d
    String reads
    String a_ling_ments
  }
  command <<<
    svjedi_py \
      ~{reads} \
      ~{a_ling_ments} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(allele) then ("--allele " +  '"' + allele + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(genotype_output_file) then ("--output " +  '"' + genotype_output_file + '"') else ""} \
      ~{if defined(dover) then ("-dover " +  '"' + dover + '"') else ""} \
      ~{if defined(d_end) then ("-dend " +  '"' + d_end + '"') else ""} \
      ~{if defined(min_support) then ("--minsupport " +  '"' + min_support + '"') else ""} \
      ~{if (d) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/svjedi:1.1.4--0"
  }
  parameter_meta {
    vcf: "vcf format"
    ref: "fasta format"
    allele: "fasta format"
    threads: "Number of threads"
    genotype_output_file: "genotype output file"
    dover: "breakpoint distance overlap"
    d_end: "soft clipping length allowed for semi global"
    min_support: "Minimum number of alignments to genotype a SV\\n(default: 3>=)"
    d: "[<seq data type>], --data [<seq data type>]"
    reads: "-p <paffile>, --paf <paffile>"
    a_ling_ments: "-ladj <allele_size>   Sequence allele adjacencies at each side of the SV"
  }
  output {
    File out_stdout = stdout()
    File out_genotype_output_file = "${in_genotype_output_file}"
  }
}