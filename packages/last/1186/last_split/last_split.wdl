version 1.0

task Lastsplit {
  input {
    String? format
    String? genome
    Int? direction
    Float? cis
    Float? trans
    Int? mean
    Int? sdev
    Int? mis_map
    Int? score
    Boolean? no_split
    Int? bytes
    Boolean? verbose
    String last_alignments_dot_maf
  }
  command <<<
    last_split \
      ~{last_alignments_dot_maf} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(direction) then ("--direction " +  '"' + direction + '"') else ""} \
      ~{if defined(cis) then ("--cis " +  '"' + cis + '"') else ""} \
      ~{if defined(trans) then ("--trans " +  '"' + trans + '"') else ""} \
      ~{if defined(mean) then ("--mean " +  '"' + mean + '"') else ""} \
      ~{if defined(sdev) then ("--sdev " +  '"' + sdev + '"') else ""} \
      ~{if defined(mis_map) then ("--mismap " +  '"' + mis_map + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if (no_split) then "--no-split" else ""} \
      ~{if defined(bytes) then ("--bytes " +  '"' + bytes + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1186--h8b12597_0"
  }
  parameter_meta {
    format: "output format: MAF, MAF+ (default: depends on input)"
    genome: "lastdb genome name"
    direction: "RNA direction: 0=reverse, 1=forward, 2=mixed (default=1)"
    cis: "cis-splice probability per base (default=0.004)"
    trans: "trans-splice probability per base (default=1e-05)"
    mean: "mean of ln[intron length] (default=7)"
    sdev: "standard deviation of ln[intron length] (default=1.7)"
    mis_map: "maximum mismap probability (default=1)"
    score: "minimum alignment score (default=e OR e+t*ln[100])"
    no_split: "write original, not split, alignments"
    bytes: "maximum memory (default=8T for split, 8G for spliced)"
    verbose: "be verbose"
    last_alignments_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}