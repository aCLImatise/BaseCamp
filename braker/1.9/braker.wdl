version 1.0

task Braker.pl {
  input {
    String? genome
    String? bam
    String? alternatives_from_evidence
    Boolean? augustus_config_path
    Boolean? bam_tools_path
    Boolean? cores
    Boolean? extrinsic_cfgfile
    Boolean? fungus
    Boolean? genemark_path
    Boolean? gff_three
    String? hints
    String? opt_cfgfile
    Boolean? overwrite
    Boolean? sam_tools_path
    Boolean? skip_genemark_et
    Boolean? skip_optimize
    Boolean? soft_masking
    String? species
    Boolean? use_existing
    Boolean? utr
    Boolean? working_dir
    Boolean? filter_out_short
    String to_slash_augustus_slash
    String bam_tools_slash
    String gmes_pet_apdo_tpl_slash
    String sam_tools_slash
  }
  command <<<
    braker.pl \
      ~{to_slash_augustus_slash} \
      ~{bam_tools_slash} \
      ~{gmes_pet_apdo_tpl_slash} \
      ~{sam_tools_slash} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(alternatives_from_evidence) then ("--alternatives-from-evidence " +  '"' + alternatives_from_evidence + '"') else ""} \
      ~{true="--AUGUSTUS_CONFIG_PATH" false="" augustus_config_path} \
      ~{true="--BAMTOOLS_PATH" false="" bam_tools_path} \
      ~{true="--cores" false="" cores} \
      ~{true="--extrinsicCfgFile" false="" extrinsic_cfgfile} \
      ~{true="--fungus" false="" fungus} \
      ~{true="--GENEMARK_PATH" false="" genemark_path} \
      ~{true="--gff3" false="" gff_three} \
      ~{if defined(hints) then ("--hints " +  '"' + hints + '"') else ""} \
      ~{if defined(opt_cfgfile) then ("--optCfgFile " +  '"' + opt_cfgfile + '"') else ""} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--SAMTOOLS_PATH" false="" sam_tools_path} \
      ~{true="--skipGeneMark-ET" false="" skip_genemark_et} \
      ~{true="--skipOptimize" false="" skip_optimize} \
      ~{true="--softmasking" false="" soft_masking} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{true="--useexisting" false="" use_existing} \
      ~{true="--UTR" false="" utr} \
      ~{true="--workingdir" false="" working_dir} \
      ~{true="--filterOutShort" false="" filter_out_short}
  >>>
  parameter_meta {
    genome: "fasta file with DNA sequences"
    bam: "bam file with spliced alignments from RNA-Seq"
    alternatives_from_evidence: "Output alternative transcripts based on explicit evidence from  hints (default is true)."
    augustus_config_path: "=/path/        Set path to AUGUSTUS (if not specified as environment variable)."
    bam_tools_path: "=/path/to/            Set path to bamtools (if not specified as environment "
    cores: "Specifies the maximum number of cores that can be used during  computation"
    extrinsic_cfgfile: "Optional. This file contains the list of used sources for the  hints and their boni and mali. If not specified the file \"extrinsic.cfg\"  in the config directory $AUGUSTUS_CONFIG_PATH is copied and adjusted."
    fungus: "GeneMark-ET option: run algorithm with branch point model (most  useful for fungal genomes)"
    genemark_path: "=/path/to/            Set path to GeneMark-ET (if not specified as environment "
    gff_three: "Output in GFF3 format."
    hints: "Alternatively to calling braker.pl with a bam file, it is  possible to call it with a file that contains introns extracted  from RNA-Seq data in gff format. This flag also allows the usage of hints from additional extrinsic sources for gene prediction  with AUGUSTUS. To consider such additional extrinsic information, you need to use the flag --optCfgFile to specify parameters for  all sources in the hints file (including the source \"E\" for intron hints from RNA-Seq)."
    opt_cfgfile: "Optional custom config file for AUGUSTUS (see --hints)."
    overwrite: "Overwrite existing files (except for species parameter files)"
    sam_tools_path: "=/path/to/            Optionally set path to samtools (if not specified as environment "
    skip_genemark_et: "Skip GeneMark-ET and use provided GeneMark-ET output (e.g. from a different source) "
    skip_optimize: "Skip optimize parameter step (not recommended)."
    soft_masking: "Softmasking option for soft masked genome files. Set to 'on' or '1'"
    species: "Species name. Existing species will not be overwritten.  Uses Sp_1 etc., if no species is assigned                          "
    use_existing: "Use the present config and parameter files if they exist for  'species'"
    utr: "Predict untranslated regions. Default is off."
    working_dir: "=/path/to/wd/            Set path to working directory. In the working directory results and temporary files are stored"
    filter_out_short: "It may happen that a \"good\" training gene, i.e. one that has intron support from RNA-Seq in all introns predicted by GeneMark, is in fact too short. This flag will discard such genes that have supported introns and a neighboring RNA-Seq supported intron upstream of the start codon within  the range of the maximum CDS size of that gene and with a multiplicity that is at least as high as 20% of the average intron multiplicity of that gene."
    to_slash_augustus_slash: "Has higher priority than environment variable."
    bam_tools_slash: "variable). Has higher priority than the environment variable."
    gmes_pet_apdo_tpl_slash: "variable). Has higher priority than environment variable."
    sam_tools_slash: "variable) to fix BAM files automatically, if necessary. Has higher      priority than environment variable."
  }
}