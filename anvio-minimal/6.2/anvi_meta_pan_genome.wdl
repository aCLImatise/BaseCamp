version 1.0

task AnviMetaPanGenome {
  input {
    String? pan_db
    String? genomes_storage
    File? internal_genomes
    Float? fraction_of_median_coverage
    Float? min_detection
  }
  command <<<
    anvi-meta-pan-genome \
      ~{if defined(pan_db) then ("--pan-db " +  '"' + pan_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(fraction_of_median_coverage) then ("--fraction-of-median-coverage " +  '"' + fraction_of_median_coverage + '"') else ""} \
      ~{if defined(min_detection) then ("--min-detection " +  '"' + min_detection + '"') else ""}
  >>>
  parameter_meta {
    pan_db: "Anvi'o pan database"
    genomes_storage: "Anvi'o genomes storage file"
    internal_genomes: "A four-column TAB-delimited flat text file. This file should be identical to the internal genomes file you used for your pangenomics analysis. Anvi'o will use this file to find all profile and contigs databases that contain the information for each gene and genome across metagenomes."
    fraction_of_median_coverage: "The value set here will be used to remove a gene if its total coverage across environments is less than the median coverage of all genes multiplied by this value. The default is 0.25, which means, if the median total coverage of all genes across all samples is 100X, then, a gene with a total coverage of less than 25X across all samples will be assumed not a part of the 'environmental core'."
    min_detection: "For this entire thing to work, the genome you are focusing on should be detected in at least one metagenome. If that is not the case, it would mean that you do not have any sample that represents the niche for this organism (or you do not have enough depth of coverage) to investigate the detection of genes in the environment. By default, this script requires at least '0.5' of the genome to be detected in at least one metagenome. This parameter allows you to change that. 0 would mean no detection test required, 1 would mean the entire genome must be detected."
  }
}