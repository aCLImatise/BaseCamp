version 1.0

task CoolerCloadPairix {
  input {
    File? metadata
    Int? assembly
    Int? nproc
    Boolean? zero_based
    Int? max_split
    String bins
    String pairs_path
    String cool_path
  }
  command <<<
    cooler cload pairix \
      ~{bins} \
      ~{pairs_path} \
      ~{cool_path} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if (zero_based) then "--zero-based" else ""} \
      ~{if defined(max_split) then ("--max-split " +  '"' + max_split + '"') else ""}
  >>>
  parameter_meta {
    metadata: "Path to JSON file containing user metadata."
    assembly: "Name of genome assembly (e.g. hg19, mm10)"
    nproc: "Number of processes to split the work between.\\n[default: 8]"
    zero_based: "Positions are zero-based  [default: False]"
    max_split: "Divide the pairs from each chromosome into at most\\nthis many chunks. Smaller chromosomes will be split\\nless frequently or not at all. Increase ths value\\nif large chromosomes dominate the workload on\\nmultiple processors.  [default: 2]"
    bins: ""
    pairs_path: ""
    cool_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}