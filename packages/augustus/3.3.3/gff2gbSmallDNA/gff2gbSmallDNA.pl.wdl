version 1.0

task Gff2gbSmallDNApl {
  input {
    File? bad
    File? good
    Boolean? overlap
    Boolean? connected
    Boolean? soft_masked
    Boolean? hard_mask
  }
  command <<<
    gff2gbSmallDNA_pl \
      ~{if defined(bad) then ("--bad " +  '"' + bad + '"') else ""} \
      ~{if defined(good) then ("--good " +  '"' + good + '"') else ""} \
      ~{if (overlap) then "--overlap" else ""} \
      ~{if (connected) then "--connected" else ""} \
      ~{if (soft_masked) then "--softmasked" else ""} \
      ~{if (hard_mask) then "--hardmask" else ""}
  >>>
  parameter_meta {
    bad: "Specify a file with gene names. All except these are included in the output."
    good: "Specify a file with gene names. Only these genes are considered\\nfrom the input, also for overlap detection."
    overlap: "Overlap filtering turned off."
    connected: "Do not cut a sequence into gene-pieces anymore."
    soft_masked: "Keep softmasking information from input sequence"
    hard_mask: "Convert softmasking information from input sequence to hardmasking in output file"
  }
  output {
    File out_stdout = stdout()
    File out_bad = "${in_bad}"
  }
}