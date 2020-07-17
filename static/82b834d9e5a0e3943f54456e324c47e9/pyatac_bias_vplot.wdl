version 1.0

task PyatacBiasVplot {
  input {
    String? bed
    Int? sizes
    String? bg
    String? fast_a
    String? pwm
    Int? cores
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
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{true="--no_plot" false="" no_plot} \
      ~{true="--plot_extra" false="" plot_extra}
  >>>
  parameter_meta {
    bed: "Positions around which to generate VPlot"
    sizes: "Accepts sizes file from pyatac sizes command"
    bg: "Accepts tabix indexed file"
    fast_a: "Accepts indexed fasta file"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included in package"
    cores: "Number of cores to use"
    weight: "column in which weight information is included"
    strand: "column in which strand information is included"
    no_plot: "Don't plot output"
    plot_extra: "Make some extra plots"
  }
}