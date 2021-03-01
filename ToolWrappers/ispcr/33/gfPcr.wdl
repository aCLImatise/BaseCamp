version 1.0

task GfPcr {
  input {
    Int? maxsize
    Int? min_perfect
    Int? min_good
    String? out
    String? name
    String host
    String port
    String seq_dir
    String f_primer
    String r_primer
  }
  command <<<
    gfPcr \
      ~{host} \
      ~{port} \
      ~{seq_dir} \
      ~{f_primer} \
      ~{r_primer} \
      ~{if defined(maxsize) then ("-maxSize " +  '"' + maxsize + '"') else ""} \
      ~{if defined(min_perfect) then ("-minPerfect " +  '"' + min_perfect + '"') else ""} \
      ~{if defined(min_good) then ("-minGood " +  '"' + min_good + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    maxsize: "- Maximum size of PCR product (default 4000)"
    min_perfect: "- Minimum size of perfect match at 3' end of primer (default 15)"
    min_good: "- Minimum size where there must be 2 matches for each mismatch (default 18)"
    out: "- Output format.  Either\\nfa - fasta with position, primers in header (default)\\nbed - tab delimited format. Fields: chrom/start/end/name/score/strand\\npsl - blat format."
    name: "- Name to use in bed output."
    host: ""
    port: ""
    seq_dir: ""
    f_primer: ""
    r_primer: ""
  }
  output {
    File out_stdout = stdout()
  }
}