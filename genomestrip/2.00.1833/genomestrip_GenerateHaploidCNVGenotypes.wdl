version 1.0

task GenomestripGenerateHaploidCNVGenotypes {
  input {
    File? vcf_file
    File? output_file
    File? reference_file
    String? debug
    String? verbose
    File? ploidy_map_file
    File? gender_map_file
    File? population_map_file
    File? site
    String? estimate_allele_frequencies
    Boolean? genotype_likelihood_threshold
    String? logging_level
    String? jar
    String logging
  }
  command <<<
    genomestrip GenerateHaploidCNVGenotypes \
      ~{logging} \
      ~{if defined(vcf_file) then ("--vcfFile " +  '"' + vcf_file + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""} \
      ~{if defined(reference_file) then ("--referenceFile " +  '"' + reference_file + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(ploidy_map_file) then ("--ploidyMapFile " +  '"' + ploidy_map_file + '"') else ""} \
      ~{if defined(gender_map_file) then ("--genderMapFile " +  '"' + gender_map_file + '"') else ""} \
      ~{if defined(population_map_file) then ("--populationMapFile " +  '"' + population_map_file + '"') else ""} \
      ~{if defined(site) then ("--site " +  '"' + site + '"') else ""} \
      ~{if defined(estimate_allele_frequencies) then ("--estimateAlleleFrequencies " +  '"' + estimate_allele_frequencies + '"') else ""} \
      ~{if (genotype_likelihood_threshold) then "--genotypeLikelihoodThreshold" else ""} \
      ~{if defined(logging_level) then ("--logging_level " +  '"' + logging_level + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    vcf_file: "Input file (vcf)"
    output_file: "Output file (vcf)"
    reference_file: "Reference fasta file"
    debug: "Print extra debugging output"
    verbose: "Enable verbose output"
    ploidy_map_file: "Ploidy map specifying\\ngender-dependent ploidy for\\neach region of the reference"
    gender_map_file: "Map file or files containing\\nthe gender for each sample"
    population_map_file: "Map file or files containing\\nthe assigned population for\\neach sample"
    site: "List (or .list file) of CNV\\nsites to be included in the\\noutput"
    estimate_allele_frequencies: "Whether to estimate and use\\npopulation-based frequency\\npriors at diploid sites\\n(default true)"
    genotype_likelihood_threshold: "Threshold at which to consider"
    logging_level: "Set the minimum level of"
    jar: ""
    logging: "-log,--log_to_file <log_to_file>                                                         Set the logging location"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_site = "${in_site}"
  }
}