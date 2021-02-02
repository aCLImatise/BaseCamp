version 1.0

task GmapCat {
  input {
    Directory? dir
    String? db
    File? names
    Int one_dot
    Int two_dot
  }
  command <<<
    gmap_cat \
      ~{one_dot} \
      ~{two_dot} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""}
  >>>
  parameter_meta {
    dir: "Destination directory for output genome index"
    db: "Output genome name"
    names: "Substitute names for renaming contigs, provided in a file.  The file have two formats:"
    one_dot: "A file with one column per line, with each line corresponding to a FASTA file, in the order\\nof the input genomes.  The chromosome name for each FASTA file will be replaced with the\\ndesired chromosome name in the file.  Every chromosome must have a corresponding line in the file."
    two_dot: "A file with two columns per line, separated by white space.  In each line, the original\\nFASTA chromosome name should be in column 1 and the desired chromosome name will be\\nin column 2.  Not every chromosome needs to be listed, which provides an easy way to change\\na few chromosome names.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_dir = "${in_dir}"
  }
}