version 1.0

task BayesTyperToolsFilter {
  input {
    Boolean? arg_variant_file
    Boolean? arg_output_prefix
    File? compress_output_files
    Int? min_homozygote_genotypes
    Int? min_genotype_posterior
    Int? min_number_of_km_ers
    File? km_er_coverage_file
  }
  command <<<
    bayesTyperTools filter \
      ~{if (arg_variant_file) then "-v" else ""} \
      ~{if (arg_output_prefix) then "-o" else ""} \
      ~{if (compress_output_files) then "-z" else ""} \
      ~{if defined(min_homozygote_genotypes) then ("--min-homozygote-genotypes " +  '"' + min_homozygote_genotypes + '"') else ""} \
      ~{if defined(min_genotype_posterior) then ("--min-genotype-posterior " +  '"' + min_genotype_posterior + '"') else ""} \
      ~{if defined(min_number_of_km_ers) then ("--min-number-of-kmers " +  '"' + min_number_of_km_ers + '"') else ""} \
      ~{if defined(km_er_coverage_file) then ("--kmer-coverage-file " +  '"' + km_er_coverage_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_variant_file: "[ --variant-file ] arg             variant file (vcf format)."
    arg_output_prefix: "[ --output-prefix ] arg            output prefix."
    compress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."
    min_homozygote_genotypes: "(=0)   filter variants with less than <value> homozygote genotypes (calculated before other filters)."
    min_genotype_posterior: "(=0.99)  filter genotypes with a posterior probability (GPP) below <value>."
    min_number_of_km_ers: "(=1)        filter sampled alleles with less than <value> kmers (NAK)."
    km_er_coverage_file: "(=bayestyper_genomic_parameters.txt)\\nsample kmer coverage file used for filtering sampled alleles with a low fraction of observed kmers (FAK).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_compress_output_files = "${in_compress_output_files}"
  }
}