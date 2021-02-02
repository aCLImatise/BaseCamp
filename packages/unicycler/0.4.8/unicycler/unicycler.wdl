version 1.0

task Unicycler {
  input {
    Boolean? help_all
    Int? short_one
    Int? short_two
    File? unpaired
    File? long
    Directory? out
    File? verbosity
    Int? min_fast_a_length
    File? keep
    Boolean? vcf
    Int? threads
    String? mode
    Int? linear_seqs
  }
  command <<<
    unicycler \
      ~{if (help_all) then "--help_all" else ""} \
      ~{if defined(short_one) then ("--short1 " +  '"' + short_one + '"') else ""} \
      ~{if defined(short_two) then ("--short2 " +  '"' + short_two + '"') else ""} \
      ~{if defined(unpaired) then ("--unpaired " +  '"' + unpaired + '"') else ""} \
      ~{if defined(long) then ("--long " +  '"' + long + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(min_fast_a_length) then ("--min_fasta_length " +  '"' + min_fast_a_length + '"') else ""} \
      ~{if defined(keep) then ("--keep " +  '"' + keep + '"') else ""} \
      ~{if (vcf) then "--vcf" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(linear_seqs) then ("--linear_seqs " +  '"' + linear_seqs + '"') else ""}
  >>>
  parameter_meta {
    help_all: "Show a help message with all program options"
    short_one: "FASTQ file of first short reads in each pair\\n(required)"
    short_two: "FASTQ file of second short reads in each pair\\n(required)"
    unpaired: "FASTQ file of unpaired short reads (optional)"
    long: "FASTQ or FASTA file of long reads (optional)"
    out: "Output directory (required)"
    verbosity: "Level of stdout and log file information (default: 1)\\n0 = no stdout, 1 = basic progress indicators,\\n2 = extra info, 3 = debugging info"
    min_fast_a_length: "Exclude contigs from the FASTA file which are\\nshorter than this length (default: 100)"
    keep: "Level of file retention (default: 1)\\n0 = only keep final files: assembly (FASTA,\\nGFA and log),\\n1 = also save graphs at main checkpoints,\\n2 = also keep SAM (enables fast rerun in different mode),\\n3 = keep all temp files and save all graphs (for debugging)"
    vcf: "Produce a VCF by mapping the short reads to the\\nfinal assembly (experimental, default: do not\\nproduce a vcf file)"
    threads: "Number of threads used (default: 8)"
    mode: "Bridging mode (default: normal)\\nconservative = smaller contigs, lowest misassembly\\nrate\\nnormal = moderate contig size and misassembly rate\\nbold = longest contigs, higher misassembly rate"
    linear_seqs: "The expected number of linear (i.e. non-circular)\\nsequences in the underlying sequence (default: 0)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}