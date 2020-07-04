version 1.0

task MbPlotKmerLogodds {
  input {
    String? km_er
    String? gff
    String? key
    Boolean? quantiles
    Boolean? verbose
    Boolean? keep_tmp_files
  }
  command <<<
    mb-plot-kmer-logodds \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{true="--quantiles" false="" quantiles} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--keep-tmp-files" false="" keep_tmp_files}
  >>>
  parameter_meta {
    km_er: "kmer length"
    gff: "remove PAR-CLIP sites overlapping with annotations"
    key: "set key that is used for PAR-CLIP site ordering"
    quantiles: "use quantiles for binarization instead of fixed bin size. Note, if you have a small number of bindng sites the bins based on quantiles can overlap!"
    verbose: "verbose output"
    keep_tmp_files: "keep temporary files"
  }
}