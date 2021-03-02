version 1.0

task AugurFilter {
  input {
    String? sequences
    String? metadata
    Int? min_date
    Int? max_date
    Int? min_length
    Boolean? non_nucleotide
    File? exclude
    File? include
    File? priority
    Int? sequences_per_group
    Array[String] group_by
    Int? subsample_seed
    Array[String] exclude_where
    Array[String] include_where
    String? query
    File? output_file_default
  }
  command <<<
    augur filter \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(min_date) then ("--min-date " +  '"' + min_date + '"') else ""} \
      ~{if defined(max_date) then ("--max-date " +  '"' + max_date + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if (non_nucleotide) then "--non-nucleotide" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if defined(sequences_per_group) then ("--sequences-per-group " +  '"' + sequences_per_group + '"') else ""} \
      ~{if defined(group_by) then ("--group-by " +  '"' + group_by + '"') else ""} \
      ~{if defined(subsample_seed) then ("--subsample-seed " +  '"' + subsample_seed + '"') else ""} \
      ~{if defined(exclude_where) then ("--exclude-where " +  '"' + exclude_where + '"') else ""} \
      ~{if defined(include_where) then ("--include-where " +  '"' + include_where + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sequences: "sequences in fasta or VCF format (default: None)"
    metadata: "metadata associated with sequences (default: None)"
    min_date: "minimal cutoff for date; may be specified as an Augur-\\nstyle numeric date (with the year as the integer part)\\nor YYYY-MM-DD (default: None)"
    max_date: "maximal cutoff for date; may be specified as an Augur-\\nstyle numeric date (with the year as the integer part)\\nor YYYY-MM-DD (default: None)"
    min_length: "minimal length of the sequences (default: None)"
    non_nucleotide: "exclude sequences that contain illegal characters\\n(default: False)"
    exclude: "file with list of strains that are to be excluded\\n(default: None)"
    include: "file with list of strains that are to be included\\nregardless of priorities or subsampling (default:\\nNone)"
    priority: "file with list of priority scores for sequences\\n(strain priority) (default: None)"
    sequences_per_group: "subsample to no more than this number of sequences per\\ncategory (default: None)"
    group_by: "categories with respect to subsample; two virtual\\nfields, \\\"month\\\" and \\\"year\\\", are supported if they\\ndon't already exist as real fields but a \\\"date\\\" field\\ndoes exist (default: None)"
    subsample_seed: "random number generator seed to allow reproducible\\nsub-sampling (with same input data). Can be number or\\nstring. (default: None)"
    exclude_where: "Exclude samples matching these conditions. Ex:\\n\\\"host=rat\\\" or \\\"host!=rat\\\". Multiple values are\\nprocessed as OR (matching any of those specified will\\nbe excluded), not AND (default: None)"
    include_where: "Include samples with these values. ex: host=rat.\\nMultiple values are processed as OR (having any of\\nthose specified will be included), not AND. This rule\\nis applied last and ensures any sequences matching\\nthese rules will be included. (default: None)"
    query: "Filter samples by attribute. Uses Pandas Dataframe\\nquerying, see https://pandas.pydata.org/pandas-\\ndocs/stable/user_guide/indexing.html#indexing-query\\nfor syntax. (default: None)"
    output_file_default: "output file (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}