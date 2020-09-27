version 1.0

task PyatacBiasVplot {
  input {
    File? bed
    File? sizes
    File? bg
    File? fast_a
    Int? pwm
    Int? out
    Int? lower
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
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(lower) then ("--lower " +  '"' + lower + '"') else ""} \
      ~{if (no_plot) then "--no_plot" else ""} \
      ~{if (plot_extra) then "--plot_extra" else ""}
  >>>
  parameter_meta {
    bed: "Positions around which to generate VPlot"
    sizes: "Accepts sizes file from pyatac sizes command"
    bg: "Accepts tabix indexed file"
    fast_a: "Accepts indexed fasta file"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included\\nin package"
    out: "--cores int         Number of cores to use"
    lower: "lower limit on insert size\\n--upper int         upper limit on insert size\\n--flank int         how many bases on each side of site (or center of site)\\nto include\\n--scale\\n--weight int        column in which weight information is included\\n--strand int        column in which strand information is included"
    no_plot: "Don't plot output"
    plot_extra: "Make some extra plots"
  }
  output {
    File out_stdout = stdout()
  }
}