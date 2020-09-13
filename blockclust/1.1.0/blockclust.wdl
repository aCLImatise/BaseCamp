version 1.0

task Blockclust {
  input {
    Boolean? accept
    Boolean? reject
    Boolean? config
    Boolean? out
    String block_clust
  }
  command <<<
    blockclust \
      ~{block_clust} \
      ~{if (accept) then "--accept" else ""} \
      ~{if (reject) then "--reject" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (out) then "--out" else ""}
  >>>
  parameter_meta {
    accept: "[accept annotations]"
    reject: "[reject annotations]"
    config: "[config file]"
    out: "[output dir]"
    block_clust: "-i, --in       [blockbuster output]"
  }
  output {
    File out_stdout = stdout()
  }
}