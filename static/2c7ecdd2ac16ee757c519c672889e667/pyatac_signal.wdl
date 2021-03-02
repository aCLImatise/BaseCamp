version 1.0

task PyatacSignal {
  input {
    File? bed
    File? bg
    File? sizes
    String? out
    Int? cores
    File? all
    Int? up
    Int? down
    Int? weight
    Int? strand
    Boolean? exp
    Boolean? positive
    Boolean? scale
    Boolean? norm
    String sites
    String aggregate
  }
  command <<<
    pyatac signal \
      ~{sites} \
      ~{aggregate} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bg) then ("--bg " +  '"' + bg + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(up) then ("--up " +  '"' + up + '"') else ""} \
      ~{if defined(down) then ("--down " +  '"' + down + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if (exp) then "--exp" else ""} \
      ~{if (positive) then "--positive" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (norm) then "--norm" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Positions around which to generate VPlot"
    bg: "Accepts bedgraph file that is tabix indexed"
    sizes: "File with chromosome names in 1st col, sizes in 2nd"
    out: "basename for output"
    cores: "Number of cores to use"
    all: "output csv file (gzipped) with signal track around all"
    up: "bases upstream of site to look"
    down: "bases dowstream site to look"
    weight: "Column with weight information. Signal for interval\\nwill be weighted by value in column"
    strand: "Column in which strand information is included if\\nstrand is to be used"
    exp: "take exponent of value"
    positive: "Only include positive signal"
    scale: "scale each individual track by total signal value"
    norm: "normalize aggregate track by number of intervals"
    sites: "--no_agg              Don't make a plot of aggregate or write up of"
    aggregate: "Bed options:"
  }
  output {
    File out_stdout = stdout()
    File out_all = "${in_all}"
  }
}