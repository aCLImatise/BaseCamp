version 1.0

task FixInFrameStopCodonGenespy {
  input {
    File? genome
    File? gtf
    Int? gff_three
    File? bad_genes
    File? hints_file
    File? out
    String? species
    File? extrinsic_cfgfile
    String? soft_masking
    String? utr
    String? print_utr
    File? additional_aug_args
    File? augustus_config_path
    File? augustus_bin_path
    File? augustus_scripts_path
    Boolean? no_cleanup
    Boolean? print_format_examples
    File? cdb_tools_path
  }
  command <<<
    fix_in_frame_stop_codon_genes_py \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{if defined(bad_genes) then ("--badGenes " +  '"' + bad_genes + '"') else ""} \
      ~{if defined(hints_file) then ("--hintsfile " +  '"' + hints_file + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(extrinsic_cfgfile) then ("--extrinsicCfgFile " +  '"' + extrinsic_cfgfile + '"') else ""} \
      ~{if defined(soft_masking) then ("--softmasking " +  '"' + soft_masking + '"') else ""} \
      ~{if defined(utr) then ("--UTR " +  '"' + utr + '"') else ""} \
      ~{if defined(print_utr) then ("--print_utr " +  '"' + print_utr + '"') else ""} \
      ~{if defined(additional_aug_args) then ("--additional_aug_args " +  '"' + additional_aug_args + '"') else ""} \
      ~{if defined(augustus_config_path) then ("--augustus_config_path " +  '"' + augustus_config_path + '"') else ""} \
      ~{if defined(augustus_bin_path) then ("--augustus_bin_path " +  '"' + augustus_bin_path + '"') else ""} \
      ~{if defined(augustus_scripts_path) then ("--augustus_scripts_path " +  '"' + augustus_scripts_path + '"') else ""} \
      ~{if (no_cleanup) then "--noCleanUp" else ""} \
      ~{if (print_format_examples) then "--print_format_examples" else ""} \
      ~{if defined(cdb_tools_path) then ("--cdbtools_path " +  '"' + cdb_tools_path + '"') else ""}
  >>>
  parameter_meta {
    genome: "genome sequence file (FASTA format)"
    gtf: "GTF input file"
    gff_three: "GFF3 input file"
    bad_genes: "File with list of transcript IDs of genes with in-\\nframe stop codons"
    hints_file: "File with hints in gff format used for (re-)predicting\\ngenes with AUGUSTUS"
    out: "Name stem of the output file; will be extended with\\n.gtf or .gff3 depending on the input format."
    species: "Set the species to be used for running AUGUSTUS"
    extrinsic_cfgfile: "Set extrinsic config file for AUGUSTUS"
    soft_masking: "Choose 'on' if the genome file is softmasked"
    utr: "Predict the untranslated regions in addition to the\\ncoding sequence. If UTR=on was used in the original\\nAUGUSTUS run, use '--UTR on' here, otherwise not"
    print_utr: "Choose 'on' if --print-utr=on was used in the original\\nAUGUSTUS run"
    additional_aug_args: "One or several command line arguments to be passed to\\nAUGUSTUS (which can not be given with another specific\\ncommand line argument here). The list of arguments has\\nto be given in quotes. If several arguments are given,\\nthey have to be separated by whitespace, i.e. \\\"--\\nfirst_arg=sth --second_arg=sth\\\". If only one argument\\nis given, the argument still has to contain a\\nwhitespace, i.e. \\\"--first_arg=sth \\\". Beware: Do not\\nchoose --alternatives-from-evidence=true because mea\\ncan not use this. Also do not set --exonnames (this\\nparameter will be set automatically depending on the\\ninput gtf/gff3 file)."
    augustus_config_path: "Set path to the config directory of AUGUSTUS. If not\\ngiven, will try to set augustus_config_path to\\nenvironment variable AUGUSTUS_CONFIG_PATH. If this\\ndoes not work, will try to set augustus_config_path to\\naugustus_scripts_path/../config/. The commandline\\nargument --AUGUSTUS_CONFIG_PATH has higher priority\\nthan the environment variable with the same name."
    augustus_bin_path: "Set path to the AUGUSTUS directory that contains\\naugustus binary. If not given, will try to locate the\\npath with which(augustus)"
    augustus_scripts_path: "Set path to the AUGUSTUS scripts directory. If not\\ngiven, will try to locate the path with\\nwhich(gtf2gff.pl). If this does not work, will try to\\nset the path relative to the augustus_bin_path\\n(augustus_bin_path/../scripts/)."
    no_cleanup: "Unless chosen, temporary files created while running\\nthis script will be deleted at the end"
    print_format_examples: "Print gtf/gff3 input format examples, do not perform\\nanalysis"
    cdb_tools_path: "Set path to cdbfasta/cdbyank. If not given, will try\\nto locate the path with which(cdbfasta).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}