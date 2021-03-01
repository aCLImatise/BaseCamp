version 1.0

task NovoutilSplitbed {
  input {
    Boolean? add
    Boolean? merge
    Boolean? splits
    File? prefix
    File? include
    File? exclude
    Boolean? sam
  }
  command <<<
    novoutil splitbed \
      ~{if (add) then "--add" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if (splits) then "--splits" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (include) then "--include" else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if (sam) then "--sam" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add: "[3m99[0m            Number of bp to add or to each input bed file region."
    merge: "[3m99[0m          Minimum gap between regions to merge them. Applied after extension."
    splits: "[3m99[0m         Number of files to split input BED into."
    prefix: "[3mprefix[0m     Filename prefix for the output bed files."
    include: "[3mfilename[0m  A file listing reference sequences (Chrom) to include in the output. One per line!"
    exclude: "[3mfilename[0m  A file listing reference sequences (Chrom) to exclude from the output. One per line!\\nNormally you would supply only an include list or an exclude list, not both!"
    sam: "[3msamfilename[0m   SAM file. Headers are used to determine sequence lengths from @SQ records and\\nensure we don't make regions extend passed the end of the sequences."
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    File out_include = "${in_include}"
    File out_exclude = "${in_exclude}"
  }
}