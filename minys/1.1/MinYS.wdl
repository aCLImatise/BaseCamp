version 1.0

task MinYS.py {
  input {
    Boolean? in
    Boolean? arg_input_reads_first_file
    Boolean? arg_input_reads_second_file
    Boolean? f_of
    Boolean? out
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
    MinYS.py \
      ~{true="-in" false="" in} \
      ~{true="-1" false="" arg_input_reads_first_file} \
      ~{true="-2" false="" arg_input_reads_second_file} \
      ~{true="-fof" false="" f_of} \
      ~{true="-out" false="" out} \
      ~{true="-ref" false="" ref} \
      ~{true="-mask" false="" mask} \
      ~{true="-minia-bin" false="" mini_a_bin} \
      ~{true="-assembly-kmer-size" false="" assembly_km_er_size} \
      ~{true="-assembly-abundance-min" false="" assembly_abundance_min} \
      ~{true="-min-contig-size" false="" min_contig_size} \
      ~{true="-mtg-dir" false="" mtg_dir} \
      ~{true="-gapfilling-kmer-size" false="" gap_filling_km_er_size} \
      ~{true="-gapfilling-abundance-min" false="" gap_filling_abundance_min} \
      ~{true="-max-nodes" false="" max_nodes} \
      ~{true="-max-length" false="" max_length} \
      ~{true="-l" false="" arg_length_minimum} \
      ~{true="-contigs" false="" contigs} \
      ~{true="-graph" false="" graph} \
      ~{true="-nb-cores" false="" nb_cores}
  >>>
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
}