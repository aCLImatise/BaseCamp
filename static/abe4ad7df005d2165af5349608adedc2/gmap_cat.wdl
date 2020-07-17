version 1.0

task GmapCat {
  input {
    String? dir
    String? db
    String? names
    String? options_dot_dot_dot
    File path_slash_to_slash_genome_dir_dot_dot_dot
  }
  command <<<
    gmap_cat \
      ~{options_dot_dot_dot} \
      ~{path_slash_to_slash_genome_dir_dot_dot_dot} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""}
  >>>
  parameter_meta {
    dir: "Destination directory for output genome index"
    db: "Output genome name"
    names: "Substitute names for renaming contigs, provided in a file.  The file have two formats: 1.  A file with one column per line, with each line corresponding to a FASTA file, in the order of the input genomes.  The chromosome name for each FASTA file will be replaced with the desired chromosome name in the file.  Every chromosome must have a corresponding line in the file. 2.  A file with two columns per line, separated by white space.  In each line, the original FASTA chromosome name should be in column 1 and the desired chromosome name will be in column 2.  Not every chromosome needs to be listed, which provides an easy way to change a few chromosome names."
    options_dot_dot_dot: ""
    path_slash_to_slash_genome_dir_dot_dot_dot: ""
  }
}