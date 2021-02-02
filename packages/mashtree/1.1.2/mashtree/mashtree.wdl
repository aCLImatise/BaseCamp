version 1.0

task Mashtree {
  input {
    Boolean? tempdir
    Boolean? num_cpus
    Boolean? out_matrix
    Boolean? file_of_files
    Boolean? out_tree
    Boolean? citation
    Boolean? trunc_length
    Boolean? sort_order
    Boolean? min_depth
    Boolean? seed
    Boolean? save_sketches
  }
  command <<<
    mashtree \
      ~{if (tempdir) then "--tempdir" else ""} \
      ~{if (num_cpus) then "--numcpus" else ""} \
      ~{if (out_matrix) then "--outmatrix" else ""} \
      ~{if (file_of_files) then "--file-of-files" else ""} \
      ~{if (out_tree) then "--outtree" else ""} \
      ~{if (citation) then "--citation" else ""} \
      ~{if (trunc_length) then "--truncLength" else ""} \
      ~{if (sort_order) then "--sort-order" else ""} \
      ~{if (min_depth) then "--mindepth" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (save_sketches) then "--save-sketches" else ""}
  >>>
  parameter_meta {
    tempdir: "''   If specified, this directory will not be\\nremoved at the end of the script and can\\nbe used to cache results for future\\nanalyses.\\nIf not specified, a dir will be made for you\\nand then deleted at the end of this script."
    num_cpus: "1    This script uses Perl threads."
    out_matrix: "''   If specified, will write a distance matrix\\nin tab-delimited format"
    file_of_files: "If specified, mashtree will try to read\\nfilenames from each input file. The file of\\nfiles format is one filename per line. This\\nfile of files cannot be compressed."
    out_tree: "If specified, the tree will be written to\\nthis file and not to stdout. Log messages\\nwill still go to stderr."
    citation: "Display the preferred citation and exit"
    trunc_length: "250  How many characters to keep in a filename"
    sort_order: "ABC  For neighbor-joining, the sort order can\\nmake a difference. Options include:\\nABC (alphabetical), random, input-order"
    min_depth: "5    If mindepth is zero, then it will be\\nchosen in a smart but slower method,\\nto discard lower-abundance kmers."
    seed: "42   Seed for mash sketch"
    save_sketches: "''   If a directory is supplied, then sketches\\nwill be saved in it.\\nIf no directory is supplied, then sketches\\nwill be saved alongside source files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}