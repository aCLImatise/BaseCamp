version 1.0

task Amberpy {
  input {
    File? gold_standard_file
    String? labels
    Int? filter
    Int? min_length
    Directory? output_dir
    Boolean? stdout
    String? desc
    String? colors
    Boolean? silent
    Int? min_completeness
    Int? max_contamination
    File? remove_genomes
    File? keyword
    String? genome_coverage
    File? ncbi_nodes_file
    File? ncbi_names_file
    File? ncbi_merged_file
    String bin_files
  }
  command <<<
    amber_py \
      ~{bin_files} \
      ~{if defined(gold_standard_file) then ("--gold_standard_file " +  '"' + gold_standard_file + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if defined(min_completeness) then ("--min_completeness " +  '"' + min_completeness + '"') else ""} \
      ~{if defined(max_contamination) then ("--max_contamination " +  '"' + max_contamination + '"') else ""} \
      ~{if defined(remove_genomes) then ("--remove_genomes " +  '"' + remove_genomes + '"') else ""} \
      ~{if defined(keyword) then ("--keyword " +  '"' + keyword + '"') else ""} \
      ~{if defined(genome_coverage) then ("--genome_coverage " +  '"' + genome_coverage + '"') else ""} \
      ~{if defined(ncbi_nodes_file) then ("--ncbi_nodes_file " +  '"' + ncbi_nodes_file + '"') else ""} \
      ~{if defined(ncbi_names_file) then ("--ncbi_names_file " +  '"' + ncbi_names_file + '"') else ""} \
      ~{if defined(ncbi_merged_file) then ("--ncbi_merged_file " +  '"' + ncbi_merged_file + '"') else ""}
  >>>
  parameter_meta {
    gold_standard_file: "Gold standard - ground truth - file"
    labels: "Comma-separated binning names"
    filter: "Filter out [FILTER]% smallest genome bins (default: 0)"
    min_length: "Minimum length of sequences"
    output_dir: "Directory to write the results to"
    stdout: "Print summary to stdout"
    desc: "Description for HTML page"
    colors: "Color indices"
    silent: "Silent mode"
    min_completeness: "Comma-separated list of min. completeness thresholds\\n(default %: 50,70,90)"
    max_contamination: "Comma-separated list of max. contamination thresholds\\n(default %: 10,5)"
    remove_genomes: "File with list of genomes to be removed"
    keyword: "Keyword in the second column of file with list of\\ngenomes to be removed (no keyword=remove all genomes\\nin list)"
    genome_coverage: "genome coverages"
    ncbi_nodes_file: "NCBI nodes file"
    ncbi_names_file: "NCBI names file"
    ncbi_merged_file: "NCBI merged file\\n"
    bin_files: "Binning files"
  }
  output {
    File out_stdout = stdout()
  }
}