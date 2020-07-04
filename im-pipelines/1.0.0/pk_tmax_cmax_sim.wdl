version 1.0

task PkTmaxCmaxSim {
  input {
    String? half_life
    String? absorption
    String? dose
    String? auc
    String? time
    String? plot_height
    String? plot_width
    String? font_size
    String? output_file_base
    Boolean? quiet
  }
  command <<<
    pk_tmax_cmax_sim \
      ~{if defined(half_life) then ("--half-life " +  '"' + half_life + '"') else ""} \
      ~{if defined(absorption) then ("--absorption " +  '"' + absorption + '"') else ""} \
      ~{if defined(dose) then ("--dose " +  '"' + dose + '"') else ""} \
      ~{if defined(auc) then ("--auc " +  '"' + auc + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(plot_height) then ("--plot-height " +  '"' + plot_height + '"') else ""} \
      ~{if defined(plot_width) then ("--plot-width " +  '"' + plot_width + '"') else ""} \
      ~{if defined(font_size) then ("--font-size " +  '"' + font_size + '"') else ""} \
      ~{if defined(output_file_base) then ("--output " +  '"' + output_file_base + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    half_life: "half life (hours)"
    absorption: "half life absorption (hours)"
    dose: "initial dose (mg)"
    auc: "AUC (mg/L*hr)"
    time: "time (h)"
    plot_height: "plot height"
    plot_width: "plot width"
    font_size: "font size"
    output_file_base: "output file base name"
    quiet: "Quiet mode"
  }
}