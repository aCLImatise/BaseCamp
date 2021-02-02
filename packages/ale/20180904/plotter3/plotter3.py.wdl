version 1.0

task Plotter3py {
  input {
    Boolean? no_save
    Int? starting_position_plot
    Int? ending_position_plot
    Boolean? spo
    String? pt
    Int? dsw
    Int? psw
    Int? ksw
    Int? is_w
    Float? tp
    Int? tw
    Float? td
    Float? std
    Int? sl
    Float? plt
    String? fn
    Int? mps
    Int? sc
    Boolean? pmo
    Boolean? dpm
    Int? mgm
  }
  command <<<
    plotter3_py \
      ~{if (no_save) then "-nosave" else ""} \
      ~{if defined(starting_position_plot) then ("-s " +  '"' + starting_position_plot + '"') else ""} \
      ~{if defined(ending_position_plot) then ("-e " +  '"' + ending_position_plot + '"') else ""} \
      ~{if (spo) then "-spo" else ""} \
      ~{if defined(pt) then ("-pt " +  '"' + pt + '"') else ""} \
      ~{if defined(dsw) then ("-dsw " +  '"' + dsw + '"') else ""} \
      ~{if defined(psw) then ("-psw " +  '"' + psw + '"') else ""} \
      ~{if defined(ksw) then ("-ksw " +  '"' + ksw + '"') else ""} \
      ~{if defined(is_w) then ("-isw " +  '"' + is_w + '"') else ""} \
      ~{if defined(tp) then ("-tp " +  '"' + tp + '"') else ""} \
      ~{if defined(tw) then ("-tw " +  '"' + tw + '"') else ""} \
      ~{if defined(td) then ("-td " +  '"' + td + '"') else ""} \
      ~{if defined(std) then ("-std " +  '"' + std + '"') else ""} \
      ~{if defined(sl) then ("-sl " +  '"' + sl + '"') else ""} \
      ~{if defined(plt) then ("-plt " +  '"' + plt + '"') else ""} \
      ~{if defined(fn) then ("-fn " +  '"' + fn + '"') else ""} \
      ~{if defined(mps) then ("-mps " +  '"' + mps + '"') else ""} \
      ~{if defined(sc) then ("-sc " +  '"' + sc + '"') else ""} \
      ~{if (pmo) then "-pmo" else ""} \
      ~{if (dpm) then "-dpm" else ""} \
      ~{if defined(mgm) then ("-mgm " +  '"' + mgm + '"') else ""}
  >>>
  parameter_meta {
    no_save: ": do not save the figure as a pdf (instead plot to screen)"
    starting_position_plot: ": the starting position to plot (0)"
    ending_position_plot: ": the ending position of the plot (contig length)"
    spo: ": sub plots on, recursive search for errors (off)"
    pt: ": plot type 'i'nsert 'k'mer 'p'lacement 'd'epth (-pt dpkt)"
    dsw: ": depth smoothing window, averaging over position (-dsw 10000)"
    psw: ": placement smoothing window (-psw 1000)"
    ksw: ": kmer smoothing window (-ksw 1000)"
    is_w: ": insert smoothing window (-ksw 1000)"
    tp: ": threshold percentage, see paper (-tp 0.01)"
    tw: ": threshold width, see paper (-tw 1000)"
    td: ": threshold depth, see paper (-td -5.0)"
    std: ": subplot threshold depth (-std -30.0)"
    sl: ": subplot length (-sl 5000)"
    plt: ": plot threshold, only plot if more than % of errors (-plt 0.0)"
    fn: ": figure name (default: contig name)"
    mps: ": minimum plot size in bp (-mps 100)"
    sc: ": plot only a specific contig (ie -sc contigName213)"
    pmo: ": plot meta information only (off)"
    dpm: ": don't plot meta information at all (off)"
    mgm: ": maximum gaussian mixtures (5)"
  }
  output {
    File out_stdout = stdout()
  }
}