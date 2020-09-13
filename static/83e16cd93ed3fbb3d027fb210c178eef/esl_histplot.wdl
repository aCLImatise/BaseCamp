version 1.0

task Eslhistplot {
  input {
    File? output_file_plot
    Boolean? input_file_binary
    Int? field_read_text
    Int? bin_size_histogram
    Int? min
    Int? max
    Boolean? surv
    Boolean? gumbel
    Boolean? exp_tail
    Boolean? gev
    Boolean? normal
    Int? trunc
    Boolean? gum_loc
    Boolean? exp_tail_loc
    Boolean? show_gum
    Boolean? show_exp
    Boolean? show_gev
    Float? alpha
    Float? lambda
    Float? mu
    Float? set_tail_mass
    Boolean? options
  }
  command <<<
    esl_histplot \
      ~{if defined(output_file_plot) then ("-o " +  '"' + output_file_plot + '"') else ""} \
      ~{if (input_file_binary) then "-b" else ""} \
      ~{if defined(field_read_text) then ("-f " +  '"' + field_read_text + '"') else ""} \
      ~{if defined(bin_size_histogram) then ("-w " +  '"' + bin_size_histogram + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if (surv) then "--surv" else ""} \
      ~{if (gumbel) then "--gumbel" else ""} \
      ~{if (exp_tail) then "--exptail" else ""} \
      ~{if (gev) then "--gev" else ""} \
      ~{if (normal) then "--normal" else ""} \
      ~{if defined(trunc) then ("--trunc " +  '"' + trunc + '"') else ""} \
      ~{if (gum_loc) then "--gumloc" else ""} \
      ~{if (exp_tail_loc) then "--exptailloc" else ""} \
      ~{if (show_gum) then "--showgum" else ""} \
      ~{if (show_exp) then "--showexp" else ""} \
      ~{if (show_gev) then "--showgev" else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(lambda) then ("--lambda " +  '"' + lambda + '"') else ""} \
      ~{if defined(mu) then ("--mu " +  '"' + mu + '"') else ""} \
      ~{if defined(set_tail_mass) then ("-t " +  '"' + set_tail_mass + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    output_file_plot: ": output file for plot (default is stdout)"
    input_file_binary: ": input file is binary, array of doubles"
    field_read_text: ": which field to read on text line (1..n)  [1]  (n>0)"
    bin_size_histogram: ": bin size for histogram  [1.0]"
    min: ": initial lower bound of histogram  [-100.]"
    max: ": initial upper bound of histogram  [100.]"
    surv: ": output survival plot, not histogram"
    gumbel: ": fit data to a Gumbel distribution"
    exp_tail: ": fit tail to an exponential distribution"
    gev: ": fit data to a generalized EVD (Frechet or Weibull)"
    normal: ": fit data to a normal (Gaussian) distribution"
    trunc: ": with --gumbel, specify data are truncated, min value is <x>"
    gum_loc: ": fit data to a Gumbel distribution w/ known lambda"
    exp_tail_loc: ": fit tail to an exponential tail w/ known lambda"
    show_gum: ": plot a known Gumbel for comparison"
    show_exp: ": plot a known exponential tail for comparison"
    show_gev: ": plot a known GEV for comparison"
    alpha: ": set known alpha (GEV shape parameter)  [0.0]"
    lambda: ": set known lambda  [0.693]"
    mu: ": set known mu  [0.0]"
    set_tail_mass: ": set tail mass to fit to  [0.01]"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_plot = "${in_output_file_plot}"
  }
}