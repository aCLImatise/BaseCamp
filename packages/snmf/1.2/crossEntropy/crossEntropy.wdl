version 1.0

task CrossEntropy {
  input {
    File? _genotype_file_geno
    Int? number_ancestral_populations
    Int? _haploid_diploid
    File? _individual_admixture
    File? _ancestral_genotype
    File? _genotype_file_masked
  }
  command <<<
    crossEntropy \
      ~{if defined(_genotype_file_geno) then ("-x " +  '"' + _genotype_file_geno + '"') else ""} \
      ~{if defined(number_ancestral_populations) then ("-K " +  '"' + number_ancestral_populations + '"') else ""} \
      ~{if defined(_haploid_diploid) then ("-m " +  '"' + _haploid_diploid + '"') else ""} \
      ~{if defined(_individual_admixture) then ("-q " +  '"' + _individual_admixture + '"') else ""} \
      ~{if defined(_ancestral_genotype) then ("-g " +  '"' + _ancestral_genotype + '"') else ""} \
      ~{if defined(_genotype_file_masked) then ("-i " +  '"' + _genotype_file_masked + '"') else ""}
  >>>
  parameter_meta {
    _genotype_file_geno: "-- genotype file (in .geno format)"
    number_ancestral_populations: "-- the number of ancestral populations"
    _haploid_diploid: "-- 1 if haploid, 2 if diploid              (default: 2)"
    _individual_admixture: "-- individual admixture coefficient file (default: genotype_file_I.K.Q)"
    _ancestral_genotype: "-- ancestral genotype frequency file       (default: genotype_file_I.K.G)"
    _genotype_file_masked: "-- genotype file with masked genotypes     (default: genotype_file_I.geno)"
  }
  output {
    File out_stdout = stdout()
  }
}