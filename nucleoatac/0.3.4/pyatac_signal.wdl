version 1.0

task PyatacSignal {
  input {
    String? bed
    String? bg
    String? sizes
    String? out
    Int? cores
    Boolean? all
    Boolean? no_agg
    Int? up
    Int? down
    Int? weight
    Int? strand
    Boolean? exp
    Boolean? positive
    Boolean? scale
    Boolean? norm
  }
  command <<<
    pyatac signal \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bg) then ("--bg " +  '"' + bg + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--all" false="" all} \
      ~{true="--no_agg" false="" no_agg} \
      ~{if defined(up) then ("--up " +  '"' + up + '"') else ""} \
      ~{if defined(down) then ("--down " +  '"' + down + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{true="--exp" false="" exp} \
      ~{true="--positive" false="" positive} \
      ~{true="--scale" false="" scale} \
      ~{true="--norm" false="" norm}
  >>>
  parameter_meta {
    bed: "Positions around which to generate VPlot"
    bg: "Accepts bedgraph file that is tabix indexed"
    sizes: "File with chromosome names in 1st col, sizes in 2nd"
    out: "basename for output"
    cores: "Number of cores to use"
    all: "output csv file (gzipped) with signal track around all sites"
    no_agg: "Don't make a plot of aggregate or write up of aggregate"
    up: "bases upstream of site to look"
    down: "bases dowstream site to look"
    weight: "Column with weight information. Signal for interval will be weighted by value in column"
    strand: "Column in which strand information is included if strand is to be used"
    exp: "take exponent of value"
    positive: "Only include positive signal"
    scale: "scale each individual track by total signal value"
    norm: "normalize aggregate track by number of intervals"
  }
}