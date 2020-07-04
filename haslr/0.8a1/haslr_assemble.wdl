version 1.0

task HaslrAssemble {
  input {
    String? path_contigs_file
    String? path_long_read
    String? path_mappings_also
    String? path__dir
    Boolean? aln_block
    Boolean? aln_sim
    Boolean? uniq_dev
    Boolean? edge_sup
    Int? number_cpu_cores
    Boolean? long_fof_n
    Boolean? mapping_fof_n
    String? r
    String? s
    String detects_v
  }
  command <<<
    haslr_assemble \
      ~{detects_v} \
      ~{if defined(path_contigs_file) then ("-c " +  '"' + path_contigs_file + '"') else ""} \
      ~{if defined(path_long_read) then ("-l " +  '"' + path_long_read + '"') else ""} \
      ~{if defined(path_mappings_also) then ("-m " +  '"' + path_mappings_also + '"') else ""} \
      ~{if defined(path__dir) then ("-d " +  '"' + path__dir + '"') else ""} \
      ~{true="--aln-block" false="" aln_block} \
      ~{true="--aln-sim" false="" aln_sim} \
      ~{true="--uniq-dev" false="" uniq_dev} \
      ~{true="--edge-sup" false="" edge_sup} \
      ~{if defined(number_cpu_cores) then ("-t " +  '"' + number_cpu_cores + '"') else ""} \
      ~{true="--long-fofn" false="" long_fof_n} \
      ~{true="--mapping-fofn" false="" mapping_fof_n} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  parameter_meta {
    path_contigs_file: "Path to contigs file (also --contig)"
    path_long_read: "Path to long read dataset (also --long)"
    path_mappings_also: "Path to mappings of long reads onto contigs (also --mapping)"
    path__dir: "Path to the output directory (also --dir)"
    aln_block: "Minimum length of alignment block [500]"
    aln_sim: "Minimum alignment similarity [0.85]"
    uniq_dev: "Maximum deviation from mean frequency of uniq contigs [0.15]"
    edge_sup: "Minimum number of long read supporting each edge [3]"
    number_cpu_cores: "Number of CPU cores to use (also --threads)"
    long_fof_n: "The file passed by -l is fofn"
    mapping_fof_n: "The file passed by -m is fofn"
    r: ""
    s: ""
    detects_v: ""
  }
}