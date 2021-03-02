version 1.0

task PyatacBiasVplot {
  input {
    File? bed
    File? sizes
    File? bg
    File? fast_a
    Int? pwm
    Int? cores
    Int? lower
    Int? upper
    Int? flank
    Int? weight
    Int? strand
    Boolean? no_plot
    Boolean? plot_extra
  }
  command <<<
    pyatac bias_vplot \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(bg) then ("--bg " +  '"' + bg + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(pwm) then ("--pwm " +  '"' + pwm + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if (no_plot) then "--no_plot" else ""} \
      ~{if (plot_extra) then "--plot_extra" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Positions around which to generate VPlot"
    sizes: "Accepts sizes file from pyatac sizes command"
    bg: "Accepts tabix indexed file"
    fast_a: "Accepts indexed fasta file"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included\\nin package"
    cores: "Number of cores to use"
    lower: "lower limit on insert size"
    upper: "upper limit on insert size"
    flank: "how many bases on each side of site (or center of site)\\nto include"
    weight: "column in which weight information is included"
    strand: "column in which strand information is included"
    no_plot: "Don't plot output"
    plot_extra: "Make some extra plots"
  }
  output {
    File out_stdout = stdout()
  }
}