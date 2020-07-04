version 1.0

task BiasawayG {
  input {
    String? bg_directory
    String? background
    String? foreground
    String? n_fold
    Boolean? length
    String? plot_filename
  }
  command <<<
    biasaway g \
      ~{if defined(bg_directory) then ("--bgdirectory " +  '"' + bg_directory + '"') else ""} \
      ~{if defined(background) then ("--background " +  '"' + background + '"') else ""} \
      ~{if defined(foreground) then ("--foreground " +  '"' + foreground + '"') else ""} \
      ~{if defined(n_fold) then ("--nfold " +  '"' + n_fold + '"') else ""} \
      ~{true="--length" false="" length} \
      ~{if defined(plot_filename) then ("--plot_filename " +  '"' + plot_filename + '"') else ""}
  >>>
  parameter_meta {
    bg_directory: "Background directory"
    background: "Background file in fasta format"
    foreground: "Foreground file in fasta format"
    n_fold: "How many background sequences per each foreground sequence will be choosen (default: 1)"
    length: "Try to match the length as closely as possible (not set by default)"
    plot_filename: "Basename for the plot files (default: no plot created)"
  }
}