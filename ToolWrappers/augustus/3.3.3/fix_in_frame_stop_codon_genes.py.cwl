class: CommandLineTool
id: fix_in_frame_stop_codon_genes.py.cwl
inputs:
- id: in_genome
  doc: genome sequence file (FASTA format)
  type: File
  inputBinding:
    prefix: --genome
- id: in_gtf
  doc: GTF input file
  type: File
  inputBinding:
    prefix: --gtf
- id: in_gff_three
  doc: GFF3 input file
  type: long
  inputBinding:
    prefix: --gff3
- id: in_bad_genes
  doc: "File with list of transcript IDs of genes with in-\nframe stop codons"
  type: File
  inputBinding:
    prefix: --badGenes
- id: in_hints_file
  doc: "File with hints in gff format used for (re-)predicting\ngenes with AUGUSTUS"
  type: File
  inputBinding:
    prefix: --hintsfile
- id: in_out
  doc: "Name stem of the output file; will be extended with\n.gtf or .gff3 depending\
    \ on the input format."
  type: File
  inputBinding:
    prefix: --out
- id: in_species
  doc: Set the species to be used for running AUGUSTUS
  type: string
  inputBinding:
    prefix: --species
- id: in_extrinsic_cfgfile
  doc: Set extrinsic config file for AUGUSTUS
  type: File
  inputBinding:
    prefix: --extrinsicCfgFile
- id: in_soft_masking
  doc: Choose 'on' if the genome file is softmasked
  type: string
  inputBinding:
    prefix: --softmasking
- id: in_utr
  doc: "Predict the untranslated regions in addition to the\ncoding sequence. If UTR=on\
    \ was used in the original\nAUGUSTUS run, use '--UTR on' here, otherwise not"
  type: string
  inputBinding:
    prefix: --UTR
- id: in_print_utr
  doc: "Choose 'on' if --print-utr=on was used in the original\nAUGUSTUS run"
  type: string
  inputBinding:
    prefix: --print_utr
- id: in_additional_aug_args
  doc: "One or several command line arguments to be passed to\nAUGUSTUS (which can\
    \ not be given with another specific\ncommand line argument here). The list of\
    \ arguments has\nto be given in quotes. If several arguments are given,\nthey\
    \ have to be separated by whitespace, i.e. \"--\nfirst_arg=sth --second_arg=sth\"\
    . If only one argument\nis given, the argument still has to contain a\nwhitespace,\
    \ i.e. \"--first_arg=sth \". Beware: Do not\nchoose --alternatives-from-evidence=true\
    \ because mea\ncan not use this. Also do not set --exonnames (this\nparameter\
    \ will be set automatically depending on the\ninput gtf/gff3 file)."
  type: File
  inputBinding:
    prefix: --additional_aug_args
- id: in_augustus_config_path
  doc: "Set path to the config directory of AUGUSTUS. If not\ngiven, will try to set\
    \ augustus_config_path to\nenvironment variable AUGUSTUS_CONFIG_PATH. If this\n\
    does not work, will try to set augustus_config_path to\naugustus_scripts_path/../config/.\
    \ The commandline\nargument --AUGUSTUS_CONFIG_PATH has higher priority\nthan the\
    \ environment variable with the same name."
  type: File
  inputBinding:
    prefix: --augustus_config_path
- id: in_augustus_bin_path
  doc: "Set path to the AUGUSTUS directory that contains\naugustus binary. If not\
    \ given, will try to locate the\npath with which(augustus)"
  type: File
  inputBinding:
    prefix: --augustus_bin_path
- id: in_augustus_scripts_path
  doc: "Set path to the AUGUSTUS scripts directory. If not\ngiven, will try to locate\
    \ the path with\nwhich(gtf2gff.pl). If this does not work, will try to\nset the\
    \ path relative to the augustus_bin_path\n(augustus_bin_path/../scripts/)."
  type: File
  inputBinding:
    prefix: --augustus_scripts_path
- id: in_no_cleanup
  doc: "Unless chosen, temporary files created while running\nthis script will be\
    \ deleted at the end"
  type: boolean
  inputBinding:
    prefix: --noCleanUp
- id: in_print_format_examples
  doc: "Print gtf/gff3 input format examples, do not perform\nanalysis"
  type: boolean
  inputBinding:
    prefix: --print_format_examples
- id: in_cdb_tools_path
  doc: "Set path to cdbfasta/cdbyank. If not given, will try\nto locate the path with\
    \ which(cdbfasta).\n"
  type: File
  inputBinding:
    prefix: --cdbtools_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fix_in_frame_stop_codon_genes.py
