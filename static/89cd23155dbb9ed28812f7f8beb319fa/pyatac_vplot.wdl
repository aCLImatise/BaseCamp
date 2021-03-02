version 1.0

task PyatacVplot {
  input {
    File? bed
    File? bam
    Int? cores
    Int? lower
    Int? upper
    Int? flank
    Int? weight
    Int? strand
    Boolean? not_atac
    Boolean? no_plot
    Boolean? plot_extra
    String include
  }
  command <<<
    pyatac vplot \
      ~{include} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if (not_atac) then "--not_atac" else ""} \
      ~{if (no_plot) then "--no_plot" else ""} \
      ~{if (plot_extra) then "--plot_extra" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Positions around which to generate VPlot"
    bam: "Accepts sorted BAM file"
    cores: "Number of cores to use"
    lower: "lower limit on insert size"
    upper: "upper limit on insert size"
    flank: "how many bases on each side of site (or center of site) to"
    weight: "column in which weight information is included"
    strand: "column in which strand information is included"
    not_atac: "Don't use atac offsets"
    no_plot: "Don't plot output"
    plot_extra: "Make some extra plots"
    include: "--scale         Scale each site"
  }
  output {
    File out_stdout = stdout()
  }
}