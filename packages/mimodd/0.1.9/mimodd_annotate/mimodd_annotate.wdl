version 1.0

task MimoddAnnotate {
  input {
    File? ofile
    Array[String] codon_tables
    File? stats
    Boolean? no_downstream
    Boolean? no_upstream
    Boolean? no_intron
    Boolean? no_intergenic
    Boolean? no_utr
    Int? ud
    File? config
    String? memory
    Boolean? quiet
    Boolean? verbose
    String input_file
    String annotation_source
  }
  command <<<
    mimodd annotate \
      ~{input_file} \
      ~{annotation_source} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(codon_tables) then ("--codon-tables " +  '"' + codon_tables + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if (no_downstream) then "--no-downstream" else ""} \
      ~{if (no_upstream) then "--no-upstream" else ""} \
      ~{if (no_intron) then "--no-intron" else ""} \
      ~{if (no_intergenic) then "--no-intergenic" else ""} \
      ~{if (no_utr) then "--no-utr" else ""} \
      ~{if defined(ud) then ("--ud " +  '"' + ud + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    ofile: "redirect the output to the specified file (default:\\nstdout)"
    codon_tables: "specify custom codon tables to be used in assessing\\nvariant effects at the protein level; if a codon table\\nshould be used for only a specific chromosome, use the\\nformat CHROM:TABLE_NAME. Use TABLE_NAME alone to\\nspecify a codon table to be used for all chromosomes,\\nfor which no chromosome-specific table is provided.\\nValid TABLE_NAMEs are those defined in the Codon\\ntables section of the SnpEff config file. NOTE: It is\\nalso possible to associate chromosomes with a codon\\ntable permanently by editing the SnpEff config file."
    stats: "generate a results summary file of the specified name"
    no_downstream: "do not include downstream effects in the output"
    no_upstream: "do not include upstream effects in the output"
    no_intron: "do not include intron effects in the output"
    no_intergenic: "do not include intergenic effects in the output"
    no_utr: "do not include UTR effects in the output"
    ud: "specify the upstream/downstream interval length, i.e.,\\nvariants more than DISTANCE nts from the next\\nannotated gene are considered to be intergenic"
    config: "location of the SnpEff installation directory. Will\\noverride MiModD SNPEFF_PATH config setting if\\nprovided."
    memory: "maximal memory to use in GB (overrides config setting)"
    quiet: "suppress original messages from SnpEff"
    verbose: "verbose output (independent of SnpEff)"
    input_file: "a vcf input file"
    annotation_source: "the name of an installed SnpEff genome annotation file\\n(the snpeff-genomes tool can be used to get a list of\\nall such names)"
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}