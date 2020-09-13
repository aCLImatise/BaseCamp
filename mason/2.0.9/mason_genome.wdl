version 1.0

task MasonGenome {
  input {
    Boolean? version_check
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Int? contig_length
    Int? seed
    File? out_file
  }
  command <<<
    mason_genome \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""} \
      ~{if defined(contig_length) then ("--contig-length " +  '"' + contig_length + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    quiet: "Set verbosity to a minimum."
    verbose: "Enable verbose output."
    very_verbose: "Enable very verbose output."
    contig_length: "of INTEGER's\\nLength of the contig to simulate. Give one -l value for each contig\\nto simulate. In range [1..inf]."
    seed: "The seed to use for the random number generator. Default: 0."
    out_file: "Output file. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],\\n.fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*],\\n.fa[.*], and .bam, where * is any of the following extensions: gz\\nand bgzf for transparent (de)compression."
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}