version 1.0

task Unicycler {
  input {
    Boolean? help_all
    String? short_one
    String? short_two
    String? unpaired
    String? long
    String? out
    String? verbosity
    Int? min_fast_a_length
    String? keep
    Boolean? vcf
    String? threads
    String? mode
    String? linear_seqs
  }
  command <<<
    unicycler \
      ~{true="--help_all" false="" help_all} \
      ~{if defined(short_one) then ("--short1 " +  '"' + short_one + '"') else ""} \
      ~{if defined(short_two) then ("--short2 " +  '"' + short_two + '"') else ""} \
      ~{if defined(unpaired) then ("--unpaired " +  '"' + unpaired + '"') else ""} \
      ~{if defined(long) then ("--long " +  '"' + long + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(min_fast_a_length) then ("--min_fasta_length " +  '"' + min_fast_a_length + '"') else ""} \
      ~{if defined(keep) then ("--keep " +  '"' + keep + '"') else ""} \
      ~{true="--vcf" false="" vcf} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(linear_seqs) then ("--linear_seqs " +  '"' + linear_seqs + '"') else ""}
  >>>
  parameter_meta {
    help_all: "Show a help message with all program options"
    short_one: "FASTQ file of first short reads in each pair (required)"
    short_two: "FASTQ file of second short reads in each pair (required)"
    unpaired: "FASTQ file of unpaired short reads (optional)"
    long: "FASTQ or FASTA file of long reads (optional)"
    out: "Output directory (required)"
    verbosity: "Level of stdout and log file information (default: 1) 0 = no stdout, 1 = basic progress indicators, 2 = extra info, 3 = debugging info"
    min_fast_a_length: "Exclude contigs from the FASTA file which are shorter than this length (default: 100)"
    keep: "Level of file retention (default: 1) 0 = only keep final files: assembly (FASTA, GFA and log), 1 = also save graphs at main checkpoints, 2 = also keep SAM (enables fast rerun in different mode), 3 = keep all temp files and save all graphs (for debugging)"
    vcf: "Produce a VCF by mapping the short reads to the final assembly (experimental, default: do not produce a vcf file)"
    threads: "Number of threads used (default: 8)"
    mode: "Bridging mode (default: normal) conservative = smaller contigs, lowest misassembly rate normal = moderate contig size and misassembly rate bold = longest contigs, higher misassembly rate"
    linear_seqs: "The expected number of linear (i.e. non-circular) sequences in the underlying sequence (default: 0)"
  }
}