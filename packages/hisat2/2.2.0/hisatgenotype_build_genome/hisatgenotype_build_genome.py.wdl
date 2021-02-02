version 1.0

task HisatgenotypeBuildGenomepy {
  input {
    File? base_fname
    Int? threads
    String? database_list
    Boolean? common_var
    Boolean? clin_var
    String? inter_gap
    String? intra_gap
    Int? aligner
    Boolean? linear_index
    Boolean? verbose
  }
  command <<<
    hisatgenotype_build_genome_py \
      ~{if defined(base_fname) then ("--base-fname " +  '"' + base_fname + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(database_list) then ("--database-list " +  '"' + database_list + '"') else ""} \
      ~{if (common_var) then "--commonvar" else ""} \
      ~{if (clin_var) then "--clinvar" else ""} \
      ~{if defined(inter_gap) then ("--inter-gap " +  '"' + inter_gap + '"') else ""} \
      ~{if defined(intra_gap) then ("--intra-gap " +  '"' + intra_gap + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if (linear_index) then "--linear-index" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    base_fname: "base filename for genotype genome (default:\\ngenotype_genome)"
    threads: "Number of threads"
    database_list: "A comma-separated list of databases (default:\\nhla,codis,cyp)"
    common_var: "Include common variants from dbSNP"
    clin_var: "Include variants from ClinVar database"
    inter_gap: "Maximum distance for variants to be in the same\\nhaplotype"
    intra_gap: "Break a haplotype into several haplotypes"
    aligner: "Aligner (default: hisat2)"
    linear_index: "Build linear index"
    verbose: "also print some statistics to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}