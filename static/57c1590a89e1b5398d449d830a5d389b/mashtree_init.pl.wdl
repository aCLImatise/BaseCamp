version 1.0

task MashtreeInitpl {
  input {
    File? outfile
    Boolean? tempdir
    Boolean? num_cpus
    Boolean? trunc_length
    Boolean? sort_order
    Boolean? genome_size
    Boolean? min_depth
    Boolean? km_er_length
    Boolean? sketch_size
  }
  command <<<
    mashtree_init_pl \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (tempdir) then "--tempdir" else ""} \
      ~{if (num_cpus) then "--numcpus" else ""} \
      ~{if (trunc_length) then "--truncLength" else ""} \
      ~{if (sort_order) then "--sort-order" else ""} \
      ~{if (genome_size) then "--genomesize" else ""} \
      ~{if (min_depth) then "--mindepth" else ""} \
      ~{if (km_er_length) then "--kmerlength" else ""} \
      ~{if (sketch_size) then "--sketch-size" else ""}
  >>>
  parameter_meta {
    outfile: "''   Required output sqlite file"
    tempdir: "''   If specified, this directory will not be\\nremoved at the end of the script and can\\nbe used to cache results for future\\nanalyses.\\nIf not specified, a dir will be made for you\\nand then deleted at the end of this script."
    num_cpus: "1    This script uses Perl threads."
    trunc_length: "250  How many characters to keep in a filename"
    sort_order: "ABC  For neighbor-joining, the sort order can\\nmake a difference. Options include:\\nABC (alphabetical), random, input-order"
    genome_size: "5000000"
    min_depth: "5    If mindepth is zero, then it will be\\nchosen in a smart but slower method,\\nto discard lower-abundance kmers."
    km_er_length: "21"
    sketch_size: "10000"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}