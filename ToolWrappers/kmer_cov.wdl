version 1.0

task Kmercov {
  input {
    Boolean? output_regions_features
    Int? min_length_report
    Boolean? allow_codes_treated
    Boolean? output_uniquerepeatunsure_fasta
    String? repeats_covered_kmers
    String? uniques_covered_kmers
    File km_er_file
  }
  command <<<
    kmer_cov \
      ~{km_er_file} \
      ~{if (output_regions_features) then "-F" else ""} \
      ~{if defined(min_length_report) then ("-L " +  '"' + min_length_report + '"') else ""} \
      ~{if (allow_codes_treated) then "-A" else ""} \
      ~{if (output_uniquerepeatunsure_fasta) then "-f" else ""} \
      ~{if defined(repeats_covered_kmers) then ("-r " +  '"' + repeats_covered_kmers + '"') else ""} \
      ~{if defined(uniques_covered_kmers) then ("-u " +  '"' + uniques_covered_kmers + '"') else ""}
  >>>
  parameter_meta {
    output_regions_features: "Output regions as Features"
    min_length_report: "Min Length to report as a feature"
    allow_codes_treated: "Allow Ambiguity Codes (treated as A's)"
    output_uniquerepeatunsure_fasta: "Output unique/repeat/unsure fasta sequences"
    repeats_covered_kmers: "Repeats are > <x>% covered by kmers"
    uniques_covered_kmers: "Uniques are <= <x>% covered by kmers"
    km_er_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}