version 1.0

task Count2hugepl {
  input {
    Int? split
    String source
    String destination_dir
  }
  command <<<
    count2huge_pl \
      ~{source} \
      ~{destination_dir} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    split: "Split the bigrams list into smaller pieces. Each file has\\nN bigrams. N is an integer (N>=1)."
    source: ""
    destination_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}