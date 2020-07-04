version 1.0

task BiasawayF {
  input {
    String? win_len
    String? step
    String? foreground
    String? n_fold
    String? plot_filename
  }
  command <<<
    biasaway f \
      ~{if defined(win_len) then ("--winlen " +  '"' + win_len + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(foreground) then ("--foreground " +  '"' + foreground + '"') else ""} \
      ~{if defined(n_fold) then ("--nfold " +  '"' + n_fold + '"') else ""} \
      ~{if defined(plot_filename) then ("--plot_filename " +  '"' + plot_filename + '"') else ""}
  >>>
  parameter_meta {
    win_len: "Window length (default: 100)"
    step: "Sliding step (default: 1)"
    foreground: "Foreground file in fasta format"
    n_fold: "How many background sequences per each foreground sequence will be generated (default: 1)"
    plot_filename: "Basename for the plot files (default: no plot created)"
  }
}