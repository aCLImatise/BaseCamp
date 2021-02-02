version 1.0

task Stringmeup {
  input {
    File? output_report
    File? output_classifications
    Boolean? keep_unclassified
    File? output_verbose
    File? names
    File? taxonomy_file
    File? nodes
    Int? minimum_hit_groups
    Boolean? gz_output
  }
  command <<<
    stringmeup \
      ~{if defined(output_report) then ("--output_report " +  '"' + output_report + '"') else ""} \
      ~{if defined(output_classifications) then ("--output_classifications " +  '"' + output_classifications + '"') else ""} \
      ~{if (keep_unclassified) then "--keep_unclassified" else ""} \
      ~{if defined(output_verbose) then ("--output_verbose " +  '"' + output_verbose + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(taxonomy_file) then ("--taxonomy_file " +  '"' + taxonomy_file + '"') else ""} \
      ~{if defined(nodes) then ("--nodes " +  '"' + nodes + '"') else ""} \
      ~{if defined(minimum_hit_groups) then ("--minimum_hit_groups " +  '"' + minimum_hit_groups + '"') else ""} \
      ~{if (gz_output) then "--gz_output" else ""}
  >>>
  parameter_meta {
    output_report: "File to save the Kraken 2 report in."
    output_classifications: "File to save the Kraken 2 read classifications in."
    keep_unclassified: "Specify if you want to output unclassified reads in\\naddition to classified reads. NOTE(!): This script\\nwill always discard reads that are unclassified in the\\nclassifications input file, this flag will just make\\nsure to keep previously classified reads even if they\\nare reclassified as unclassified by this script.\\nTIP(!): Always run Kraken2 with no confidence cutoff."
    output_verbose: "File to send verbose output to. This file will\\ncontain, for each read, (1) original classification,\\n(2) new classification, (3) original confidence, (4),\\nnew confidence (5), original taxa name (6), new taxa\\nname, (7) original rank, (8) new rank, (9) distance\\ntravelled (how many nodes was it lifted upwards in the\\ntaxonomy)."
    names: "taxonomy names dump file (names.dmp)"
    taxonomy_file: "Path to a pickle file containing a taxonomy tree\\ncreated through the TaxonomyTree.save_taxonomy\\nfunction (taxonomy.py)."
    nodes: "taxonomy nodes dump file (nodes.dmp)"
    minimum_hit_groups: "The minimum number of hit groups a read needs to be\\nclassified. NOTE: You need to supply a classifications\\nfile (kraken2 output) that contain the\\n\\\"minimizer_hit_groups\\\" column."
    gz_output: "Set this flag to output <output_classifications> and\\n<output_verbose> in gzipped format (will add .gz\\nextension to the filenames).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_verbose = "${in_output_verbose}"
  }
}