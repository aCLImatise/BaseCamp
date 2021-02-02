version 1.0

task Svjedipy {
  input {
    File? vcf
    File? ref
    File? allele
    Boolean? i
    Int? threads
    File? genotype_output_file
    String? dover
    Int? d_end
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
      ~{if (i) then "-i" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(genotype_output_file) then ("--output " +  '"' + genotype_output_file + '"') else ""} \
      ~{if defined(dover) then ("-dover " +  '"' + dover + '"') else ""} \
      ~{if defined(d_end) then ("-dend " +  '"' + d_end + '"') else ""} \
      ~{if (d) then "-d" else ""}
  >>>
  parameter_meta {
    vcf: "vcf format"
    ref: "fasta format"
    allele: "fasta format"
    i: "[<readfile> [<readfile> ...]], --input [<readfile> [<readfile> ...]]"
    threads: "Number of threads"
    genotype_output_file: "genotype output file"
    dover: "breakpoint distance overlap"
    d_end: "soft clipping length allowed for semi global"
    d: "[<seq data type>], --data [<seq data type>]"
    reads: "-p <paffile>, --paf <paffile>"
    a_ling_ments: "-ms <minNbAln>, --minsupport <minNbAln>"
  }
  output {
    File out_stdout = stdout()
    File out_genotype_output_file = "${in_genotype_output_file}"
  }
}