version 1.0

task MinYSpy {
  input {
    Boolean? in
    Boolean? arg_input_reads_first_file
    Boolean? arg_input_reads_second_file
    Boolean? f_of
    Directory? out
    Boolean? ref
    Boolean? mask
    Boolean? mini_a_bin
    Boolean? assembly_km_er_size
    Boolean? assembly_abundance_min
    Boolean? min_contig_size
    Boolean? mtg_dir
    Boolean? gap_filling_km_er_size
    Boolean? gap_filling_abundance_min
    Boolean? max_nodes
    Boolean? max_length
    Boolean? arg_length_minimum
    Boolean? contigs
    Boolean? graph
    Boolean? nb_cores
  }
  command <<<
    MinYS_py \
      ~{if (in) then "-in" else ""} \
      ~{if (arg_input_reads_first_file) then "-1" else ""} \
      ~{if (arg_input_reads_second_file) then "-2" else ""} \
      ~{if (f_of) then "-fof" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (ref) then "-ref" else ""} \
      ~{if (mask) then "-mask" else ""} \
      ~{if (mini_a_bin) then "-minia-bin" else ""} \
      ~{if (assembly_km_er_size) then "-assembly-kmer-size" else ""} \
      ~{if (assembly_abundance_min) then "-assembly-abundance-min" else ""} \
      ~{if (min_contig_size) then "-min-contig-size" else ""} \
      ~{if (mtg_dir) then "-mtg-dir" else ""} \
      ~{if (gap_filling_km_er_size) then "-gapfilling-kmer-size" else ""} \
      ~{if (gap_filling_abundance_min) then "-gapfilling-abundance-min" else ""} \
      ~{if (max_nodes) then "-max-nodes" else ""} \
      ~{if (max_length) then "-max-length" else ""} \
      ~{if (arg_length_minimum) then "-l" else ""} \
      ~{if (contigs) then "-contigs" else ""} \
      ~{if (graph) then "-graph" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "(1 arg) :    Input reads file"
    arg_input_reads_first_file: "(1 arg) :    Input reads first file"
    arg_input_reads_second_file: "(1 arg) :    Input reads second file"
    f_of: "(1 arg) :    Input file of read files (if paired files, 2 columns tab-separated)"
    out: "(1 arg) :    output directory for result files [Default: ./mtg_results]"
    ref: "(1 arg) :    Bwa index"
    mask: "(1 arg) :    Bed file for region removed from mapping"
    mini_a_bin: "(1 arg) :    Path to Minia binary (if not in $PATH"
    assembly_km_er_size: "(1 arg) :    Kmer size used for Minia assembly (should be given even if bypassing minia assembly step, usefull knowledge for gap-filling) [Default: 31]"
    assembly_abundance_min: "(1 arg) :    Minimal abundance of kmers used for assembly [Default: auto]"
    min_contig_size: "(1 arg) :    Minimal size for a contig to be used in gap-filling [Default: 400]"
    mtg_dir: "(1 arg) :    Path to MindTheGap build directory (if not in $PATH)"
    gap_filling_km_er_size: "(1 arg) :    Kmer size used for gap-filling [Default: 31]"
    gap_filling_abundance_min: "(1 arg) :    Minimal abundance of kmers used for gap-filling [Default: auto]"
    max_nodes: "(1 arg) :    Maximum number of nodes in contig graph [Default: 300]"
    max_length: "(1 arg) :    Maximum length of gap-filling (nt) [Default: 50000]"
    arg_length_minimum: "(1 arg) :    Length of minimum prefix for node merging, default should work for most cases [Default: 100]"
    contigs: "(1 arg) :    Contigs in fasta format - override mapping and assembly"
    graph: "(1 arg) :    Graph in h5 format - override graph creation"
    nb_cores: "(1 arg) :    Number of cores [Default: 0]"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}