version 1.0

task Count2huge.pl {
  input {
    String? split
    String source
    String destination_dir
  }
  command <<<
    count2huge.pl \
      ~{source} \
      ~{destination_dir} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""}
  >>>
  parameter_meta {
    split: "Split the bigrams list into smaller pieces. Each file has N bigrams. N is an integer (N>=1). "
    source: ""
    destination_dir: ""
  }
}