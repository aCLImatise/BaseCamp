version 1.0

task Macepy {
  input {
    File? forward
    File? reverse
    Int? chrom_size
    String? out_prefix
    Float? p_value
    Int? max_dist
    Int? fz_window
    Int? bg_window
    Int? fold
  }
  command <<<
    mace_py \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(chrom_size) then ("--chromSize " +  '"' + chrom_size + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(p_value) then ("--pvalue " +  '"' + p_value + '"') else ""} \
      ~{if defined(max_dist) then ("--max-dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(fz_window) then ("--fz-window " +  '"' + fz_window + '"') else ""} \
      ~{if defined(bg_window) then ("--bg-window " +  '"' + bg_window + '"') else ""} \
      ~{if defined(fold) then ("--fold " +  '"' + fold + '"') else ""}
  >>>
  parameter_meta {
    forward: "BigWig format file containing coverage calcualted from\\nreads mapped to *forward* strand."
    reverse: "BigWig format file containing coverage calcualted from\\nreads mapped to *reverse* strand."
    chrom_size: "Chromosome size file. Tab or space separated text file\\nwith 2 columns: first column contains chromosome name,\\nsecond column contains chromosome size. Example:chr1\\n249250621 <NewLine> chr2        243199373 <NewLine>\\nchr3        198022430 <NewLine> ..."
    out_prefix: "Prefix of output files. NOTE: if 'prefix.border.bed'\\nexists and was non-empty, peak calling step will be\\nskipped! So if you want to rerun mace.py from scratch,\\nuse different 'prefix' or delete old\\n'prefix.border.bed' before starting."
    p_value: "Pvalue cutoff for border detection and subsequent\\nborder pairing. default=0.05"
    max_dist: "Maximum distance allowed for border pairing.\\ndefault=100"
    fz_window: "Peaks located closely within this window will be\\nmerged. default=5 (bp)"
    bg_window: "Background window size used to determine background\\nsignal level. default=100 (bp)"
    fold: "Minmum coverage signal used to build model (i.e.\\nestimate optimal peak pair size). default=2.0\\n"
  }
  output {
    File out_stdout = stdout()
  }
}