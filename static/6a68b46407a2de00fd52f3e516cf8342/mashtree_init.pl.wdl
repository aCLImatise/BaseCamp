version 1.0

task MashtreeInitpl {
  input {
    File? outfile
    Boolean? tempdir
    Boolean? num_cpus
    Boolean? trunc_length
    Boolean? sort_order
    Boolean? min_depth
  }
  command <<<
    mashtree_init_pl \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (tempdir) then "--tempdir" else ""} \
      ~{if (num_cpus) then "--numcpus" else ""} \
      ~{if (trunc_length) then "--truncLength" else ""} \
      ~{if (sort_order) then "--sort-order" else ""} \
      ~{if (min_depth) then "--mindepth" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "''   Required output sqlite file"
    tempdir: "''   If specified, this directory will not be\\nremoved at the end of the script and can\\nbe used to cache results for future\\nanalyses.\\nIf not specified, a dir will be made for you\\nand then deleted at the end of this script."
    num_cpus: "1    This script uses Perl threads."
    trunc_length: "250  How many characters to keep in a filename"
    sort_order: "ABC  For neighbor-joining, the sort order can\\nmake a difference. Options include:\\nABC (alphabetical), random, input-order"
    min_depth: "5    If mindepth is zero, then it will be\\nchosen in a smart but slower method,\\nto discard lower-abundance kmers."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}