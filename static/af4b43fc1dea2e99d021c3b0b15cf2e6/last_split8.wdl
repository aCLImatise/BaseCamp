version 1.0

task LastSplit8 {
  input {
    String? format
    String? genome
    String? direction
    String? cis
    String? trans
    String? mean
    String? sdev
    String? mis_map
    Int? score
    Boolean? no_split
    String? bytes
    Boolean? verbose
    String last_alignments_dot_maf
  }
  command <<<
    last-split8 \
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
      ~{true="--no-split" false="" no_split} \
      ~{if defined(bytes) then ("--bytes " +  '"' + bytes + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    format: "output format: MAF, MAF+ (default=MAF+)"
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
}