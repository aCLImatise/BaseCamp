version 1.0

task MergeOtuResults.py {
  input {
    String? pickPickOtusResults
  }
  command <<<
    merge_otu_results.py \
      ~{pickPickOtusResults}
  >>>
}