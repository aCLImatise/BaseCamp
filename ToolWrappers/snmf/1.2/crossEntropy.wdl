version 1.0

task CrossEntropy {
  input {
    File? genotype_file_format
    Int? _number_ancestral
    Int? _diploid_default
    File? individual_admixture_coefficient
    File? ancestral_genotype_frequency
    File? genotype_file_genotypefileigeno
  }
  command <<<
    crossEntropy \
      ~{if defined(genotype_file_format) then ("-x " +  '"' + genotype_file_format + '"') else ""} \
      ~{if defined(_number_ancestral) then ("-K " +  '"' + _number_ancestral + '"') else ""} \
      ~{if defined(_diploid_default) then ("-m " +  '"' + _diploid_default + '"') else ""} \
      ~{if defined(individual_admixture_coefficient) then ("-q " +  '"' + individual_admixture_coefficient + '"') else ""} \
      ~{if defined(ancestral_genotype_frequency) then ("-g " +  '"' + ancestral_genotype_frequency + '"') else ""} \
      ~{if defined(genotype_file_genotypefileigeno) then ("-i " +  '"' + genotype_file_genotypefileigeno + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genotype_file_format: "-- genotype file (in .geno format)"
    _number_ancestral: "-- the number of ancestral populations"
    _diploid_default: "-- 1 if haploid, 2 if diploid              (default: 2)"
    individual_admixture_coefficient: "-- individual admixture coefficient file (default: genotype_file_I.K.Q)"
    ancestral_genotype_frequency: "-- ancestral genotype frequency file       (default: genotype_file_I.K.G)"
    genotype_file_genotypefileigeno: "-- genotype file with masked genotypes     (default: genotype_file_I.geno)"
  }
  output {
    File out_stdout = stdout()
  }
}