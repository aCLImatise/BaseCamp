version 1.0

task Anvimetapangenome {
  input {
    String? pan_db
    File? genomes_storage
    File? internal_genomes
    Float? fraction_of_median_coverage
    Float? min_detection
  }
  command <<<
    anvi_meta_pan_genome \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(fraction_of_median_coverage) then ("--fraction-of-median-coverage " +  '"' + fraction_of_median_coverage + '"') else ""} \
      ~{if defined(min_detection) then ("--min-detection " +  '"' + min_detection + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_db: "Anvi'o pan database"
    genomes_storage: "Anvi'o genomes storage file"
    internal_genomes: "A four-column TAB-delimited flat text file. This file\\nshould be identical to the internal genomes file you\\nused for your pangenomics analysis. Anvi'o will use\\nthis file to find all profile and contigs databases\\nthat contain the information for each gene and genome\\nacross metagenomes."
    fraction_of_median_coverage: "The value set here will be used to remove a gene if\\nits total coverage across environments is less than\\nthe median coverage of all genes multiplied by this\\nvalue. The default is 0.25, which means, if the median\\ntotal coverage of all genes across all samples is\\n100X, then, a gene with a total coverage of less than\\n25X across all samples will be assumed not a part of\\nthe 'environmental core'."
    min_detection: "For this entire thing to work, the genome you are\\nfocusing on should be detected in at least one\\nmetagenome. If that is not the case, it would mean\\nthat you do not have any sample that represents the\\nniche for this organism (or you do not have enough\\ndepth of coverage) to investigate the detection of\\ngenes in the environment. By default, this script\\nrequires at least '0.5' of the genome to be detected\\nin at least one metagenome. This parameter allows you\\nto change that. 0 would mean no detection test\\nrequired, 1 would mean the entire genome must be\\ndetected.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}