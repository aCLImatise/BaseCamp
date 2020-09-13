version 1.0

task MagpurifyGccontent {
  input {
    Float? cut_off
    Boolean? weighted_mean
  }
  command <<<
    magpurify gc_content \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (weighted_mean) then "--weighted-mean" else ""}
  >>>
  parameter_meta {
    cut_off: "Cutoff (default: 15.75)"
    weighted_mean: "Compute the mean weighted by the contig length (default:\\nFalse)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}