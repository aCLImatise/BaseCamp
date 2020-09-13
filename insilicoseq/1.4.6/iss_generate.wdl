version 1.0

task IssGenerate {
  input {
    Boolean? quiet
    Boolean? debug
    Int? seed
    Int? cpus
    String? genomes
    String? draft
    Int? n_genomes
    Boolean? ncbi
    Boolean? n_genomes_ncbi
    String? abundance
    File? abundance_file
    File? coverage
    Int? n_reads
    String? mode
    File? model
    Boolean? gc_bias
    Boolean? compress
    File? output_file_prefix
  }
  command <<<
    iss generate \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(draft) then ("--draft " +  '"' + draft + '"') else ""} \
      ~{if defined(n_genomes) then ("--n_genomes " +  '"' + n_genomes + '"') else ""} \
      ~{if (ncbi) then "--ncbi" else ""} \
      ~{if (n_genomes_ncbi) then "--n_genomes_ncbi" else ""} \
      ~{if defined(abundance) then ("--abundance " +  '"' + abundance + '"') else ""} \
      ~{if defined(abundance_file) then ("--abundance_file " +  '"' + abundance_file + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(n_reads) then ("--n_reads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if (gc_bias) then "--gc_bias" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if defined(output_file_prefix) then ("--output " +  '"' + output_file_prefix + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Disable info logging. (default: False)."
    debug: "Enable debug logging. (default: False)."
    seed: "Seed all the random number generators"
    cpus: "number of cpus to use. (default: 2)."
    genomes: "[<genomes.fasta> ...], -g <genomes.fasta> [<genomes.fasta> ...]\\nInput genome(s) from where the reads will originate"
    draft: "[<draft.fasta> ...]\\nInput draft genome(s) from where the reads will\\noriginate"
    n_genomes: "How many genomes will be used for the simulation. is\\nset with --genomes/-g or/and --draft to take random\\ngenomes from the input multifasta"
    ncbi: "[<str> [<str> ...]], -k [<str> [<str> ...]]\\nDownload input genomes from NCBI. Requires\\n--n_genomes/-u option. Can be bacteria, viruses,\\narchaea or a combination of the three (space-\\nseparated)"
    n_genomes_ncbi: "[<int> [<int> ...]], -U [<int> [<int> ...]]\\nHow many genomes will be downloaded from NCBI.\\nRequired if --ncbi/-k is set. If more than one kingdom\\nis set with --ncbi, multiple values are necessary\\n(space-separated)."
    abundance: "abundance distribution (default: lognormal). Can be\\nuniform, halfnormal, exponential, lognormal or zero-\\ninflated-lognormal."
    abundance_file: "abundance file for coverage calculations (default:\\nNone)."
    coverage: "file containing coverage information (default: None)."
    n_reads: "Number of reads to generate (default: 1000000). Allows\\nsuffixes k, K, m, M, g and G (ex 0.5M for 500000)."
    mode: "Error model. If not specified, using kernel density\\nestimation (default: kde). Can be kde, basic or\\nperfect"
    model: "Error model file. (default: None). Use HiSeq, NovaSeq\\nor MiSeq for a pre-computed error model provided with\\nthe software, or a file generated with iss model. If\\nyou do not wish to use a model, use --mode basic or\\n--mode perfect. The name of the built-in models are\\ncase insensitive."
    gc_bias: "If set, may fail to sequence reads with abnormal GC\\ncontent. (default: False)"
    compress: "Compress the output in gzip format (default: False)."
    output_file_prefix: "Output file prefix (Required)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}