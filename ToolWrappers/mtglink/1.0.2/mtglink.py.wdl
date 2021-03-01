version 1.0

task Mtglinkpy {
  input {
    File? gfa
    Int? chunk_size_bp
    File? bam
    File? fast_q
    File? index
    Int? minimal_frequence_barcodes
    Directory? out
    Directory? ref_dir
    File? line
    File? rb_xu
    Boolean? kmer_sizes_used
    Boolean? force
    Boolean? minimal_abundance_threshold
    Int? ext
    Int? max_nodes
    Int? max_length
    Int? nb_cores
    Int? max_memory
    Int? verbose
  }
  command <<<
    mtglink_py \
      ~{if defined(gfa) then ("-gfa " +  '"' + gfa + '"') else ""} \
      ~{if defined(chunk_size_bp) then ("-c " +  '"' + chunk_size_bp + '"') else ""} \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(fast_q) then ("-fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(index) then ("-index " +  '"' + index + '"') else ""} \
      ~{if defined(minimal_frequence_barcodes) then ("-f " +  '"' + minimal_frequence_barcodes + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ref_dir) then ("-refDir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(line) then ("-line " +  '"' + line + '"') else ""} \
      ~{if defined(rb_xu) then ("-rbxu " +  '"' + rb_xu + '"') else ""} \
      ~{if (kmer_sizes_used) then "-k" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (minimal_abundance_threshold) then "-a" else ""} \
      ~{if defined(ext) then ("-ext " +  '"' + ext + '"') else ""} \
      ~{if defined(max_nodes) then ("-max-nodes " +  '"' + max_nodes + '"') else ""} \
      ~{if defined(max_length) then ("-max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(nb_cores) then ("-nb-cores " +  '"' + nb_cores + '"') else ""} \
      ~{if defined(max_memory) then ("-max-memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mtglink:1.0.2--0"
  }
  parameter_meta {
    gfa: "Input GFA file (format: xxx.gfa)"
    chunk_size_bp: "Chunk size (bp)"
    bam: "BAM file: linked reads mapped on current genome\\nassembly (format: xxx.bam)"
    fast_q: "File of indexed reads (format: xxx.fastq | xxx.fq)"
    index: "Prefix of barcodes index file (format: xxx.shelve)"
    minimal_frequence_barcodes: "Minimal frequence of barcodes extracted in the chunk\\nof size '-c' [default: 2]"
    out: "Output directory [default './mtglink_results']"
    ref_dir: "Directory containing the reference sequences if any"
    line: "Line of GFA file input from which to start analysis\\n(if not provided, start analysis from first line of\\nGFA file input) [optional]"
    rb_xu: "File containing the reads of the union (if already\\nextracted) [optional]"
    kmer_sizes_used: "[KMER [KMER ...]]  k-mer size(s) used for gap-filling [default: [51, 41,\\n31, 21]]"
    force: "To force search on all '-k' values provided"
    minimal_abundance_threshold: "[ABUNDANCE_THRESHOLD [ABUNDANCE_THRESHOLD ...]]\\nMinimal abundance threshold for solid k-mers [default:\\n[3, 2]]"
    ext: "Extension size of the gap on both sides (bp);\\ndetermine start/end of gapfilling [default: '500']"
    max_nodes: "Maximum number of nodes in contig graph [default:\\n1000]"
    max_length: "Maximum length of gapfilling (bp) [default: 10000]"
    nb_cores: "Number of cores [default: 1]"
    max_memory: "Max memory for graph building (in MBytes) [default: 0]"
    verbose: "Verbosity level [default: 0]"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}