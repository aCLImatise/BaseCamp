version 1.0

task OncogeminiRoh {
  input {
    Int? min_snps
    Int? min_total_depth
    Int? min_gt_depth
    Int? min_size
    Int? max_he_ts
    Int? max_unknowns
    Int? comma_separated_list
  }
  command <<<
    oncogemini roh \
      ~{if defined(min_snps) then ("--min-snps " +  '"' + min_snps + '"') else ""} \
      ~{if defined(min_total_depth) then ("--min-total-depth " +  '"' + min_total_depth + '"') else ""} \
      ~{if defined(min_gt_depth) then ("--min-gt-depth " +  '"' + min_gt_depth + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(max_he_ts) then ("--max-hets " +  '"' + max_he_ts + '"') else ""} \
      ~{if defined(max_unknowns) then ("--max-unknowns " +  '"' + max_unknowns + '"') else ""} \
      ~{if defined(comma_separated_list) then ("-s " +  '"' + comma_separated_list + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_snps: "Minimum number of homozygous snps expected in a run\\n(def. 25)"
    min_total_depth: "The minimum overall sequencing depth requiredfor a SNP\\nto be considered (def = 20)."
    min_gt_depth: "The minimum required sequencing depth underlying a\\ngiven sample's genotypefor a SNP to be considered (def\\n= 0)."
    min_size: "Minimum run size in base pairs (def. 100000)"
    max_he_ts: "Maximum number of allowed hets in the run (def. 1)"
    max_unknowns: "Maximum number of allowed unknowns in the run (def. 3)"
    comma_separated_list: "Comma separated list of samples to screen for ROHs.\\ne.g S120,S450\\n"
  }
  output {
    File out_stdout = stdout()
  }
}