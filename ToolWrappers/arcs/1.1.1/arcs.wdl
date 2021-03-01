version 1.0

task Arcs {
  input {
    File? fof_name
    Boolean? mult_file
    File? fasta_file_contig
    Int? min_reads
    Int? min_links
    Int? min_size
    File? base_name
    File? graph
    Int? gap
    File? tsv
    File? barcode_counts
    Int? index_multiplicity
    Int? max_degree
    Int? end_length
    Float? error_percent
    Boolean? run_verbose
    Int? seq_id
    Boolean? k_value
    Boolean? j_index
    Boolean? threads
    Int? bin_size
    Boolean? dist_est
    Boolean? no_dist_est
    Boolean? dist_median
    Boolean? dist_upper
    File? dist_tsv
    File? samples_tsv
    Boolean? output_scaffolds_pairing
    String list_of_alignment_files
    String or
  }
  command <<<
    arcs \
      ~{list_of_alignment_files} \
      ~{or} \
      ~{if defined(fof_name) then ("--fofName " +  '"' + fof_name + '"') else ""} \
      ~{if (mult_file) then "--multfile" else ""} \
      ~{if defined(fasta_file_contig) then ("--file " +  '"' + fasta_file_contig + '"') else ""} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(min_links) then ("--min_links " +  '"' + min_links + '"') else ""} \
      ~{if defined(min_size) then ("--min_size " +  '"' + min_size + '"') else ""} \
      ~{if defined(base_name) then ("--base_name " +  '"' + base_name + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(barcode_counts) then ("--barcode-counts " +  '"' + barcode_counts + '"') else ""} \
      ~{if defined(index_multiplicity) then ("--index_multiplicity " +  '"' + index_multiplicity + '"') else ""} \
      ~{if defined(max_degree) then ("--max_degree " +  '"' + max_degree + '"') else ""} \
      ~{if defined(end_length) then ("--end_length " +  '"' + end_length + '"') else ""} \
      ~{if defined(error_percent) then ("--error_percent " +  '"' + error_percent + '"') else ""} \
      ~{if (run_verbose) then "--run_verbose" else ""} \
      ~{if defined(seq_id) then ("--seq_id " +  '"' + seq_id + '"') else ""} \
      ~{if (k_value) then "--k_value" else ""} \
      ~{if (j_index) then "--j_index" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if defined(bin_size) then ("--bin_size " +  '"' + bin_size + '"') else ""} \
      ~{if (dist_est) then "--dist_est" else ""} \
      ~{if (no_dist_est) then "--no_dist_est" else ""} \
      ~{if (dist_median) then "--dist_median" else ""} \
      ~{if (dist_upper) then "--dist_upper" else ""} \
      ~{if defined(dist_tsv) then ("--dist_tsv " +  '"' + dist_tsv + '"') else ""} \
      ~{if defined(samples_tsv) then ("--samples_tsv " +  '"' + samples_tsv + '"') else ""} \
      ~{if (output_scaffolds_pairing) then "--pair" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fof_name: "text file listing input filenames"
    mult_file: "tsv or csv file listing barcode multiplicities [optional]"
    fasta_file_contig: "FASTA file of contig sequences to scaffold"
    min_reads: "min aligned read pairs per barcode mapping [5]"
    min_links: "min shared barcodes between contigs [0]"
    min_size: "min contig length [500]"
    base_name: "output file prefix"
    graph: "write the ABySS dist.gv to FILE"
    gap: "fixed gap size for ABySS dist.gv file [100]"
    tsv: "write graph in TSV format to FILE"
    barcode_counts: "write number of reads per barcode to FILE"
    index_multiplicity: "barcode multiplicity range [50-10000]"
    max_degree: "max node degree in scaffold graph [0]"
    end_length: "contig head/tail length for masking alignments [30000]"
    error_percent: "p-value for head/tail assignment and link orientation (lower is more stringent) [0.05]"
    run_verbose: "verbose logging"
    seq_id: "min sequence identity for read alignments [98]"
    k_value: "size of a k-mer [30]"
    j_index: "minimum fraction of read kmers matching a contigId [0.55]"
    threads: "number of threads [1]"
    bin_size: "estimate distance using N closest Jaccard scores [20]"
    dist_est: "enable distance estimation"
    no_dist_est: "disable distance estimation [default]"
    dist_median: "use median distance in ABySS dist.gv [default]"
    dist_upper: "use upper bound distance in ABySS dist.gv"
    dist_tsv: "write min/max distance estimates to FILE"
    samples_tsv: "write intra-contig distance/barcode samples to FILE"
    output_scaffolds_pairing: "output scaffolds pairing TSV with number of barcode links (no p-value threshold)supporting each of the 4 possible orientation"
    list_of_alignment_files: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
    File out_base_name = "${in_base_name}"
  }
}