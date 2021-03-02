class: CommandLineTool
id: braker.pl.cwl
inputs:
- id: in_genome
  doc: fasta file with DNA sequences
  type: File?
  inputBinding:
    prefix: --genome
- id: in_bam
  doc: bam file with spliced alignments from RNA-Seq
  type: File?
  inputBinding:
    prefix: --bam
- id: in_alternatives_from_evidence
  doc: "Output alternative transcripts based on explicit evidence from\nhints (default\
    \ is true)."
  type: string?
  inputBinding:
    prefix: --alternatives-from-evidence
- id: in_augustus_config_path
  doc: "=/path/        Set path to AUGUSTUS (if not specified as environment variable).\n\
    to/augustus/                       Has higher priority than environment variable."
  type: boolean?
  inputBinding:
    prefix: --AUGUSTUS_CONFIG_PATH
- id: in_bam_tools_path
  doc: "=/path/to/            Set path to bamtools (if not specified as environment\n\
    bamtools/                          variable). Has higher priority than the environment\
    \ variable."
  type: boolean?
  inputBinding:
    prefix: --BAMTOOLS_PATH
- id: in_cores
  doc: Specifies the maximum number of cores that can be used during
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_fungus
  doc: "GeneMark-ET option: run algorithm with branch point model (most\nuseful for\
    \ fungal genomes)"
  type: boolean?
  inputBinding:
    prefix: --fungus
- id: in_genemark_path
  doc: "=/path/to/            Set path to GeneMark-ET (if not specified as environment\n\
    gmes_petap.pl/                     variable). Has higher priority than environment\
    \ variable."
  type: boolean?
  inputBinding:
    prefix: --GENEMARK_PATH
- id: in_gff_three
  doc: Output in GFF3 format.
  type: boolean?
  inputBinding:
    prefix: --gff3
- id: in_hints
  doc: "Alternatively to calling braker.pl with a bam file, it is\npossible to call\
    \ it with a file that contains introns extracted\nfrom RNA-Seq data in gff format.\
    \ This flag also allows the usage\nof hints from additional extrinsic sources\
    \ for gene prediction\nwith AUGUSTUS. To consider such additional extrinsic information,\n\
    you need to use the flag --optCfgFile to specify parameters for\nall sources in\
    \ the hints file\n(including the source \"E\" for intron hints from RNA-Seq)."
  type: File?
  inputBinding:
    prefix: --hints
- id: in_opt_cfgfile
  doc: Optional custom config file for AUGUSTUS (see --hints).
  type: File?
  inputBinding:
    prefix: --optCfgFile
- id: in_overwrite
  doc: Overwrite existing files (except for species parameter files)
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_sam_tools_path
  doc: "=/path/to/            Optionally set path to samtools (if not specified as\
    \ environment\nsamtools/                          variable) to fix BAM files automatically,\
    \ if necessary. Has higher\npriority than environment variable."
  type: boolean?
  inputBinding:
    prefix: --SAMTOOLS_PATH
- id: in_skip_genemark_et
  doc: "Skip GeneMark-ET and use provided GeneMark-ET output (e.g. from a\ndifferent\
    \ source)"
  type: boolean?
  inputBinding:
    prefix: --skipGeneMark-ET
- id: in_skip_optimize
  doc: Skip optimize parameter step (not recommended).
  type: boolean?
  inputBinding:
    prefix: --skipOptimize
- id: in_soft_masking
  doc: Softmasking option for soft masked genome files. Set to 'on' or '1'
  type: boolean?
  inputBinding:
    prefix: --softmasking
- id: in_species
  doc: "Species name. Existing species will not be overwritten.\nUses Sp_1 etc., if\
    \ no species is assigned"
  type: long?
  inputBinding:
    prefix: --species
- id: in_use_existing
  doc: "Use the present config and parameter files if they exist for\n'species'"
  type: boolean?
  inputBinding:
    prefix: --useexisting
- id: in_utr
  doc: Predict untranslated regions. Default is off.
  type: boolean?
  inputBinding:
    prefix: --UTR
- id: in_working_dir
  doc: "=/path/to/wd/            Set path to working directory. In the working directory\
    \ results\nand temporary files are stored"
  type: boolean?
  inputBinding:
    prefix: --workingdir
- id: in_filter_out_short
  doc: "It may happen that a \"good\" training gene, i.e. one that has intron\nsupport\
    \ from RNA-Seq in all introns predicted by GeneMark, is in fact\ntoo short. This\
    \ flag will discard such genes that have supported introns\nand a neighboring\
    \ RNA-Seq supported intron upstream of the start codon within\nthe range of the\
    \ maximum CDS size of that gene and with a multiplicity that\nis at least as high\
    \ as 20% of the average intron multiplicity of that gene."
  type: boolean?
  inputBinding:
    prefix: --filterOutShort
- id: in_computation
  doc: '--extrinsicCfgFile                   Optional. This file contains the list
    of used sources for the '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- braker.pl
