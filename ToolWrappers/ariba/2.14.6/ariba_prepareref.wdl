version 1.0

task AribaPrepareref {
  input {
    File? fast_a
    File? metadata
    String? all_coding
    Boolean? no_cd_hit
    File? cd_hit_clusters
    Float? cd_hit_min_id
    Float? cd_hit_min_length
    Int? cd_hit_max_memory
    Int? min_gene_length
    Int? max_gene_length
    Int? min_noncoding_length
    Int? max_noncoding_length
    Int? genetic_code
    Directory? force
    Int? threads
    Boolean? verbose
    String outdir
  }
  command <<<
    ariba prepareref \
      ~{outdir} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(all_coding) then ("--all_coding " +  '"' + all_coding + '"') else ""} \
      ~{if (no_cd_hit) then "--no_cdhit" else ""} \
      ~{if defined(cd_hit_clusters) then ("--cdhit_clusters " +  '"' + cd_hit_clusters + '"') else ""} \
      ~{if defined(cd_hit_min_id) then ("--cdhit_min_id " +  '"' + cd_hit_min_id + '"') else ""} \
      ~{if defined(cd_hit_min_length) then ("--cdhit_min_length " +  '"' + cd_hit_min_length + '"') else ""} \
      ~{if defined(cd_hit_max_memory) then ("--cdhit_max_memory " +  '"' + cd_hit_max_memory + '"') else ""} \
      ~{if defined(min_gene_length) then ("--min_gene_length " +  '"' + min_gene_length + '"') else ""} \
      ~{if defined(max_gene_length) then ("--max_gene_length " +  '"' + max_gene_length + '"') else ""} \
      ~{if defined(min_noncoding_length) then ("--min_noncoding_length " +  '"' + min_noncoding_length + '"') else ""} \
      ~{if defined(max_noncoding_length) then ("--max_noncoding_length " +  '"' + max_noncoding_length + '"') else ""} \
      ~{if defined(genetic_code) then ("--genetic_code " +  '"' + genetic_code + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0"
  }
  parameter_meta {
    fast_a: "REQUIRED. Name of fasta file. Can be used more than\\nonce if your sequences are spread over more than on\\nfile"
    metadata: "Name of tsv file of metadata about the input\\nsequences. Can be used more than once if your metadata\\nis spread over more than one file. Incompatible with\\n--all_coding"
    all_coding: "Use this if you only have a fasta of presence absence\\nsequences as input, and no metadata. Use \\\"yes\\\" if all\\nsequences are coding, or \\\"no\\\" if they are all non-\\ncoding. Incompatible with -m/--metadata"
    no_cd_hit: "Do not run cd-hit. Each input sequence is put into its\\nown \\\"cluster\\\". Incompatible with --cdhit_clusters."
    cd_hit_clusters: "File specifying how the sequences should be clustered.\\nWill be used instead of running cdhit. Format is one\\ncluster per line. Sequence names separated by\\nwhitespace. Incompatible with --no_cdhit"
    cd_hit_min_id: "Sequence identity threshold (cd-hit option -c) [0.9]"
    cd_hit_min_length: "Length difference cutoff (cd-hit option -s) [0.0]"
    cd_hit_max_memory: "Memory limit in MB (cd-hit option -M) [None]. Use 0\\nfor unlimited."
    min_gene_length: "Minimum allowed length in nucleotides of reference\\ngenes [6]"
    max_gene_length: "Maximum allowed length in nucleotides of reference\\ngenes [10000]"
    min_noncoding_length: "Minimum allowed length in nucleotides of non-coding\\nsequences [6]"
    max_noncoding_length: "Maximum allowed length in nucleotides of non-coding\\nsequences [20000]"
    genetic_code: "Number of genetic code to use. Currently supported\\n1,4,11 [11]"
    force: "Overwrite output directory, if it already exists"
    threads: "Number of threads (currently only applies to cdhit)\\n[1]"
    verbose: "Be verbose"
    outdir: "Output directory (must not already exist)"
  }
  output {
    File out_stdout = stdout()
    Directory out_force = "${in_force}"
  }
}