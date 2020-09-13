version 1.0

task PvacseqCoverageFilter {
  input {
    Int? normal_cov
    Int? t_dna_cov
    Int? trna_cov
    Int? normal_vaf
    Int? t_dna_vaf
    Int? trna_vaf
    Int? expn_val
  }
  command <<<
    pvacseq coverage_filter \
      ~{if defined(normal_cov) then ("--normal-cov " +  '"' + normal_cov + '"') else ""} \
      ~{if defined(t_dna_cov) then ("--tdna-cov " +  '"' + t_dna_cov + '"') else ""} \
      ~{if defined(trna_cov) then ("--trna-cov " +  '"' + trna_cov + '"') else ""} \
      ~{if defined(normal_vaf) then ("--normal-vaf " +  '"' + normal_vaf + '"') else ""} \
      ~{if defined(t_dna_vaf) then ("--tdna-vaf " +  '"' + t_dna_vaf + '"') else ""} \
      ~{if defined(trna_vaf) then ("--trna-vaf " +  '"' + trna_vaf + '"') else ""} \
      ~{if defined(expn_val) then ("--expn-val " +  '"' + expn_val + '"') else ""}
  >>>
  parameter_meta {
    normal_cov: "Normal Coverage Cutoff. Sites above this cutoff will\\nbe considered. Default: 5"
    t_dna_cov: "Tumor DNA Coverage Cutoff. Sites above this cutoff\\nwill be considered. Default: 10"
    trna_cov: "Tumor RNA Coverage Cutoff. Sites above this cutoff\\nwill be considered. Default: 10"
    normal_vaf: "Normal VAF Cutoff. Sites BELOW this cutoff in normal\\nwill be considered. Default: 2"
    t_dna_vaf: "Tumor DNA VAF Cutoff. Sites above this cutoff will be\\nconsidered. Default: 40"
    trna_vaf: "Tumor RNA VAF Cutoff. Sites above this cutoff will be\\nconsidered. Default: 40"
    expn_val: "Gene and Transcript Expression cutoff. Sites above\\nthis cutoff will be consideredDefault: 1\\n"
  }
  output {
    File out_stdout = stdout()
  }
}