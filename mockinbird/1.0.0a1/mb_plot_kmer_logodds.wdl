version 1.0

task Mbplotkmerlogodds {
  input {
    Int? km_er
    String? gff
    String? key
    Boolean? quantiles
    Boolean? verbose
    Boolean? keep_tmp_files
  }
  command <<<
    mb_plot_kmer_logodds \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if (quantiles) then "--quantiles" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (keep_tmp_files) then "--keep-tmp-files" else ""}
  >>>
  parameter_meta {
    km_er: "kmer length"
    gff: "remove PAR-CLIP sites overlapping with annotations"
    key: "set key that is used for PAR-CLIP site ordering"
    quantiles: "use quantiles for binarization instead of fixed bin\\nsize. Note, if you have a small number of bindng sites\\nthe bins based on quantiles can overlap!"
    verbose: "verbose output"
    keep_tmp_files: "keep temporary files"
  }
  output {
    File out_stdout = stdout()
  }
}