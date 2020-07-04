version 1.0

task KmerCov {
  input {
    Boolean? output_regions_features
    String? min_length_report
    Boolean? allow_codes_treated
    Boolean? output_uniquerepeatunsure_fasta
    String? repeats_x_covered
    String? uniques_x_covered
    String km_er_file
  }
  command <<<
    kmer-cov \
      ~{km_er_file} \
      ~{true="-F" false="" output_regions_features} \
      ~{if defined(min_length_report) then ("-L " +  '"' + min_length_report + '"') else ""} \
      ~{true="-A" false="" allow_codes_treated} \
      ~{true="-f" false="" output_uniquerepeatunsure_fasta} \
      ~{if defined(repeats_x_covered) then ("-r " +  '"' + repeats_x_covered + '"') else ""} \
      ~{if defined(uniques_x_covered) then ("-u " +  '"' + uniques_x_covered + '"') else ""}
  >>>
  parameter_meta {
    output_regions_features: "Output regions as Features"
    min_length_report: "Min Length to report as a feature"
    allow_codes_treated: "Allow Ambiguity Codes (treated as A's)"
    output_uniquerepeatunsure_fasta: "Output unique/repeat/unsure fasta sequences"
    repeats_x_covered: "Repeats are > <x>% covered by kmers"
    uniques_x_covered: "Uniques are <= <x>% covered by kmers"
    km_er_file: ""
  }
}