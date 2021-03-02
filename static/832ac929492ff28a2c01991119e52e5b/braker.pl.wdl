version 1.0

task Brakerpl {
  input {
    File? genome
    File? bam
    String? alternatives_from_evidence
    Boolean? augustus_config_path
    Boolean? bam_tools_path
    Boolean? cores
    Boolean? fungus
    Boolean? genemark_path
    Boolean? gff_three
    File? hints
    File? opt_cfgfile
    Boolean? overwrite
    Boolean? sam_tools_path
    Boolean? skip_genemark_et
    Boolean? skip_optimize
    Boolean? soft_masking
    Int? species
    Boolean? use_existing
    Boolean? utr
    Boolean? working_dir
    Boolean? filter_out_short
    String computation
  }
  command <<<
    braker_pl \
      ~{computation} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(alternatives_from_evidence) then ("--alternatives-from-evidence " +  '"' + alternatives_from_evidence + '"') else ""} \
      ~{if (augustus_config_path) then "--AUGUSTUS_CONFIG_PATH" else ""} \
      ~{if (bam_tools_path) then "--BAMTOOLS_PATH" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (fungus) then "--fungus" else ""} \
      ~{if (genemark_path) then "--GENEMARK_PATH" else ""} \
      ~{if (gff_three) then "--gff3" else ""} \
      ~{if defined(hints) then ("--hints " +  '"' + hints + '"') else ""} \
      ~{if defined(opt_cfgfile) then ("--optCfgFile " +  '"' + opt_cfgfile + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (sam_tools_path) then "--SAMTOOLS_PATH" else ""} \
      ~{if (skip_genemark_et) then "--skipGeneMark-ET" else ""} \
      ~{if (skip_optimize) then "--skipOptimize" else ""} \
      ~{if (soft_masking) then "--softmasking" else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if (use_existing) then "--useexisting" else ""} \
      ~{if (utr) then "--UTR" else ""} \
      ~{if (working_dir) then "--workingdir" else ""} \
      ~{if (filter_out_short) then "--filterOutShort" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome: "fasta file with DNA sequences"
    bam: "bam file with spliced alignments from RNA-Seq"
    alternatives_from_evidence: "Output alternative transcripts based on explicit evidence from\\nhints (default is true)."
    augustus_config_path: "=/path/        Set path to AUGUSTUS (if not specified as environment variable).\\nto/augustus/                       Has higher priority than environment variable."
    bam_tools_path: "=/path/to/            Set path to bamtools (if not specified as environment\\nbamtools/                          variable). Has higher priority than the environment variable."
    cores: "Specifies the maximum number of cores that can be used during"
    fungus: "GeneMark-ET option: run algorithm with branch point model (most\\nuseful for fungal genomes)"
    genemark_path: "=/path/to/            Set path to GeneMark-ET (if not specified as environment\\ngmes_petap.pl/                     variable). Has higher priority than environment variable."
    gff_three: "Output in GFF3 format."
    hints: "Alternatively to calling braker.pl with a bam file, it is\\npossible to call it with a file that contains introns extracted\\nfrom RNA-Seq data in gff format. This flag also allows the usage\\nof hints from additional extrinsic sources for gene prediction\\nwith AUGUSTUS. To consider such additional extrinsic information,\\nyou need to use the flag --optCfgFile to specify parameters for\\nall sources in the hints file\\n(including the source \\\"E\\\" for intron hints from RNA-Seq)."
    opt_cfgfile: "Optional custom config file for AUGUSTUS (see --hints)."
    overwrite: "Overwrite existing files (except for species parameter files)"
    sam_tools_path: "=/path/to/            Optionally set path to samtools (if not specified as environment\\nsamtools/                          variable) to fix BAM files automatically, if necessary. Has higher\\npriority than environment variable."
    skip_genemark_et: "Skip GeneMark-ET and use provided GeneMark-ET output (e.g. from a\\ndifferent source)"
    skip_optimize: "Skip optimize parameter step (not recommended)."
    soft_masking: "Softmasking option for soft masked genome files. Set to 'on' or '1'"
    species: "Species name. Existing species will not be overwritten.\\nUses Sp_1 etc., if no species is assigned"
    use_existing: "Use the present config and parameter files if they exist for\\n'species'"
    utr: "Predict untranslated regions. Default is off."
    working_dir: "=/path/to/wd/            Set path to working directory. In the working directory results\\nand temporary files are stored"
    filter_out_short: "It may happen that a \\\"good\\\" training gene, i.e. one that has intron\\nsupport from RNA-Seq in all introns predicted by GeneMark, is in fact\\ntoo short. This flag will discard such genes that have supported introns\\nand a neighboring RNA-Seq supported intron upstream of the start codon within\\nthe range of the maximum CDS size of that gene and with a multiplicity that\\nis at least as high as 20% of the average intron multiplicity of that gene."
    computation: "--extrinsicCfgFile                   Optional. This file contains the list of used sources for the "
  }
  output {
    File out_stdout = stdout()
  }
}