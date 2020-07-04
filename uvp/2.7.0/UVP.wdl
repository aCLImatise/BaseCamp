version 1.0

task UVP {
  input {
    String? fast_q
    String? reference
    String? name
    String? fast_q_two
    String? outdir
    Boolean? keep_files
    Boolean? bwa
    Boolean? all
    Boolean? g_atk
    Boolean? sam_tools
    Boolean? annotate
    String? threads
    String? kraken_db
    String? config
    Boolean? verbose
  }
  command <<<
    UVP \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--keepfiles" false="" keep_files} \
      ~{true="--bwa" false="" bwa} \
      ~{true="--all" false="" all} \
      ~{true="--gatk" false="" g_atk} \
      ~{true="--samtools" false="" sam_tools} \
      ~{true="--annotate" false="" annotate} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(kraken_db) then ("--krakendb " +  '"' + kraken_db + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    fast_q: "Input FASTQ file"
    reference: "Reference genome in FASTA format."
    name: "Sample name to be used as a prefix."
    fast_q_two: "Second paired-end FASTQ file."
    outdir: "Output directory"
    keep_files: "Keep intermediate files."
    bwa: "Align Illumina reads using bwa. (Default)"
    all: "Run all SNP / InDel calling programs."
    g_atk: "Run GATK SNP / InDel calling. (Default)"
    sam_tools: "Run SamTools SNP / InDel calling."
    annotate: "Run snpEff functional annotation."
    threads: "Num CPU threads for parallel execution"
    kraken_db: "Path to kraken database"
    config: "Config file"
    verbose: "Produce status updates of the run."
  }
}