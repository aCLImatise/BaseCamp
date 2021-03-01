version 1.0

task HaslrAssemble {
  input {
    File? path_contigs_file
    File? path_long_read
    File? path_mappings_long
    File? path_output_directory
    Boolean? aln_block
    Boolean? aln_sim
    Boolean? uniq_dev
    Boolean? edge_sup
    Int? number_cpu_cores
    Boolean? long_fof_n
    Boolean? mapping_fof_n
    String? s
    String? r
    String detects_v
  }
  command <<<
    haslr_assemble \
      ~{detects_v} \
      ~{if defined(path_contigs_file) then ("-c " +  '"' + path_contigs_file + '"') else ""} \
      ~{if defined(path_long_read) then ("-l " +  '"' + path_long_read + '"') else ""} \
      ~{if defined(path_mappings_long) then ("-m " +  '"' + path_mappings_long + '"') else ""} \
      ~{if defined(path_output_directory) then ("-d " +  '"' + path_output_directory + '"') else ""} \
      ~{if (aln_block) then "--aln-block" else ""} \
      ~{if (aln_sim) then "--aln-sim" else ""} \
      ~{if (uniq_dev) then "--uniq-dev" else ""} \
      ~{if (edge_sup) then "--edge-sup" else ""} \
      ~{if defined(number_cpu_cores) then ("-t " +  '"' + number_cpu_cores + '"') else ""} \
      ~{if (long_fof_n) then "--long-fofn" else ""} \
      ~{if (mapping_fof_n) then "--mapping-fofn" else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_contigs_file: "Path to contigs file (also --contig)"
    path_long_read: "Path to long read dataset (also --long)"
    path_mappings_long: "Path to mappings of long reads onto contigs (also --mapping)"
    path_output_directory: "Path to the output directory (also --dir)"
    aln_block: "Minimum length of alignment block [500]"
    aln_sim: "Minimum alignment similarity [0.85]"
    uniq_dev: "Maximum deviation from mean frequency of uniq contigs [0.15]"
    edge_sup: "Minimum number of long read supporting each edge [3]"
    number_cpu_cores: "Number of CPU cores to use (also --threads)"
    long_fof_n: "The file passed by -l is fofn"
    mapping_fof_n: "The file passed by -m is fofn"
    s: ""
    r: ""
    detects_v: ""
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}