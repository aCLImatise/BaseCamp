version 1.0

task Svjedi.py {
  input {
    String? vcf
    String? ref
    String? allele
    Boolean? _reads
    String? paf
    String? threads
    String? genotype_output_file
    String? dover
    String? d_end
    Int? min_support
    Boolean? d
  }
  command <<<
    svjedi.py \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(allele) then ("--allele " +  '"' + allele + '"') else ""} \
      ~{true="-i" false="" _reads} \
      ~{if defined(paf) then ("--paf " +  '"' + paf + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(genotype_output_file) then ("--output " +  '"' + genotype_output_file + '"') else ""} \
      ~{if defined(dover) then ("-dover " +  '"' + dover + '"') else ""} \
      ~{if defined(d_end) then ("-dend " +  '"' + d_end + '"') else ""} \
      ~{if defined(min_support) then ("--minsupport " +  '"' + min_support + '"') else ""} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    vcf: "vcf format"
    ref: "fasta format"
    allele: "fasta format"
    _reads: "[<readfile> [<readfile> ...]], --input [<readfile> [<readfile> ...]] reads"
    paf: "PAF format"
    threads: "Number of threads"
    genotype_output_file: "genotype output file"
    dover: "breakpoint distance overlap"
    d_end: "soft clipping length allowed for semi global alingments"
    min_support: "Minimum number of alignments to genotype a SV (default: 3>=)"
    d: "[<seq data type>], --data [<seq data type>]"
  }
}