version 1.0

task HisatgenotypeHlaCyppy {
  input {
    File? base
    String? default_list
    String? reference_type
    Int? hla_list
    Boolean? partial
    Int? aligner_list
    File? reads
    File? alignment
    Int? threads
    Int? simulate_interval
    Boolean? coverage
    Int? exclude_allele_list
    Int? num_mismatch
    Boolean? verbose
    Int? debug
    Boolean? novel_allele_detection
  }
  command <<<
    hisatgenotype_hla_cyp_py \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""} \
      ~{if defined(default_list) then ("--default-list " +  '"' + default_list + '"') else ""} \
      ~{if defined(reference_type) then ("--reference-type " +  '"' + reference_type + '"') else ""} \
      ~{if defined(hla_list) then ("--hla-list " +  '"' + hla_list + '"') else ""} \
      ~{if (partial) then "--partial" else ""} \
      ~{if defined(aligner_list) then ("--aligner-list " +  '"' + aligner_list + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(simulate_interval) then ("--simulate-interval " +  '"' + simulate_interval + '"') else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if defined(exclude_allele_list) then ("--exclude-allele-list " +  '"' + exclude_allele_list + '"') else ""} \
      ~{if defined(num_mismatch) then ("--num-mismatch " +  '"' + num_mismatch + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if (novel_allele_detection) then "--novel_allele_detection" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base: "base filename for backbone HLA sequence, HLA variants,\\nand HLA linking info"
    default_list: "A comma-separated list of HLA alleles to be tested.\\nAlleles are retrieved from default backbone data (all\\nalleles included in backbone)."
    reference_type: "Reference type: gene, chromosome, and genome (default:\\ngene)"
    hla_list: "A comma-separated list of HLA genes (default:\\nA,B,C,DQA1,DQB1,DRB1)"
    partial: "Include partial alleles (e.g. A_nuc.fasta)"
    aligner_list: "A comma-separated list of aligners (default:\\nhisat2.graph,hisat2.linear,bowtie2.linear)"
    reads: "Fastq read file name"
    alignment: "BAM file name"
    threads: "Number of threads"
    simulate_interval: "Reads simulated at every these base pairs (default: 1)"
    coverage: "Experimental purpose (assign reads based on coverage)"
    exclude_allele_list: "A comma-separated list of alleles to be excluded.\\nEnter a number N to randomly select N alleles for\\nexclusion and N non-excluded alleles for testing (2N\\ntested in total)."
    num_mismatch: "Maximum number of mismatches per read alignment to be\\nconsidered (default: 0)"
    verbose: "also print some statistics to stderr"
    debug: "e.g., test_id:10,read_id:10000,basic_test"
    novel_allele_detection: "Change test to detection of new alleles. Report\\nsensitivity and specificity rate at the end.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}