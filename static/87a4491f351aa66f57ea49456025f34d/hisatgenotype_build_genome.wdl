version 1.0

task HisatgenotypeBuildGenome.py {
  input {
    String? base_fname
    String? threads
    String? database_list
    Boolean? common_var
    Boolean? clin_var
    Int? inter_gap
    Int? intra_gap
    String? aligner
    Boolean? linear_index
    Boolean? verbose
  }
  command <<<
    hisatgenotype_build_genome.py \
      ~{if defined(base_fname) then ("--base-fname " +  '"' + base_fname + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(database_list) then ("--database-list " +  '"' + database_list + '"') else ""} \
      ~{true="--commonvar" false="" common_var} \
      ~{true="--clinvar" false="" clin_var} \
      ~{if defined(inter_gap) then ("--inter-gap " +  '"' + inter_gap + '"') else ""} \
      ~{if defined(intra_gap) then ("--intra-gap " +  '"' + intra_gap + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{true="--linear-index" false="" linear_index} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    base_fname: "base filename for genotype genome (default: genotype_genome)"
    threads: "Number of threads"
    database_list: "A comma-separated list of databases (default: hla,codis,cyp)"
    common_var: "Include common variants from dbSNP"
    clin_var: "Include variants from ClinVar database"
    inter_gap: "Maximum distance for variants to be in the same haplotype"
    intra_gap: "Break a haplotype into several haplotypes"
    aligner: "Aligner (default: hisat2)"
    linear_index: "Build linear index"
    verbose: "also print some statistics to stderr"
  }
}