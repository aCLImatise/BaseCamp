version 1.0

task MagpurifyGccontentOut {
  input {
    Boolean? weighted_mean
    String? cut_off
    String mag_purify
    String gc_content
    String fna
    String out
  }
  command <<<
    magpurify gc_content out \
      ~{mag_purify} \
      ~{gc_content} \
      ~{fna} \
      ~{out} \
      ~{if (weighted_mean) then "--weighted-mean" else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    weighted_mean: ""
    cut_off: ""
    mag_purify: ""
    gc_content: ""
    fna: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}