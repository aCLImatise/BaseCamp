class: CommandLineTool
id: ../../../braker.pl.cwl
inputs:
- id: genome
  doc: fasta file with DNA sequences
  type: string
  inputBinding:
    prefix: --genome
- id: bam
  doc: bam file with spliced alignments from RNA-Seq
  type: string
  inputBinding:
    prefix: --bam
- id: alternatives_from_evidence
  doc: Output alternative transcripts based on explicit evidence from  hints (default
    is true).
  type: string
  inputBinding:
    prefix: --alternatives-from-evidence
- id: augustus_config_path
  doc: =/path/        Set path to AUGUSTUS (if not specified as environment variable).
  type: boolean
  inputBinding:
    prefix: --AUGUSTUS_CONFIG_PATH
- id: bam_tools_path
  doc: '=/path/to/            Set path to bamtools (if not specified as environment '
  type: boolean
  inputBinding:
    prefix: --BAMTOOLS_PATH
- id: cores
  doc: Specifies the maximum number of cores that can be used during  computation
  type: boolean
  inputBinding:
    prefix: --cores
- id: extrinsic_cfgfile
  doc: Optional. This file contains the list of used sources for the  hints and their
    boni and mali. If not specified the file "extrinsic.cfg"  in the config directory
    $AUGUSTUS_CONFIG_PATH is copied and adjusted.
  type: boolean
  inputBinding:
    prefix: --extrinsicCfgFile
- id: fungus
  doc: 'GeneMark-ET option: run algorithm with branch point model (most  useful for
    fungal genomes)'
  type: boolean
  inputBinding:
    prefix: --fungus
- id: genemark_path
  doc: '=/path/to/            Set path to GeneMark-ET (if not specified as environment '
  type: boolean
  inputBinding:
    prefix: --GENEMARK_PATH
- id: gff_three
  doc: Output in GFF3 format.
  type: boolean
  inputBinding:
    prefix: --gff3
- id: hints
  doc: Alternatively to calling braker.pl with a bam file, it is  possible to call
    it with a file that contains introns extracted  from RNA-Seq data in gff format.
    This flag also allows the usage of hints from additional extrinsic sources for
    gene prediction  with AUGUSTUS. To consider such additional extrinsic information,
    you need to use the flag --optCfgFile to specify parameters for  all sources in
    the hints file (including the source "E" for intron hints from RNA-Seq).
  type: string
  inputBinding:
    prefix: --hints
- id: opt_cfgfile
  doc: Optional custom config file for AUGUSTUS (see --hints).
  type: string
  inputBinding:
    prefix: --optCfgFile
- id: overwrite
  doc: Overwrite existing files (except for species parameter files)
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: sam_tools_path
  doc: '=/path/to/            Optionally set path to samtools (if not specified as
    environment '
  type: boolean
  inputBinding:
    prefix: --SAMTOOLS_PATH
- id: skip_genemark_et
  doc: 'Skip GeneMark-ET and use provided GeneMark-ET output (e.g. from a different
    source) '
  type: boolean
  inputBinding:
    prefix: --skipGeneMark-ET
- id: skip_optimize
  doc: Skip optimize parameter step (not recommended).
  type: boolean
  inputBinding:
    prefix: --skipOptimize
- id: soft_masking
  doc: Softmasking option for soft masked genome files. Set to 'on' or '1'
  type: boolean
  inputBinding:
    prefix: --softmasking
- id: species
  doc: 'Species name. Existing species will not be overwritten.  Uses Sp_1 etc., if
    no species is assigned                          '
  type: string
  inputBinding:
    prefix: --species
- id: use_existing
  doc: Use the present config and parameter files if they exist for  'species'
  type: boolean
  inputBinding:
    prefix: --useexisting
- id: utr
  doc: Predict untranslated regions. Default is off.
  type: boolean
  inputBinding:
    prefix: --UTR
- id: working_dir
  doc: =/path/to/wd/            Set path to working directory. In the working directory
    results and temporary files are stored
  type: boolean
  inputBinding:
    prefix: --workingdir
- id: filter_out_short
  doc: It may happen that a "good" training gene, i.e. one that has intron support
    from RNA-Seq in all introns predicted by GeneMark, is in fact too short. This
    flag will discard such genes that have supported introns and a neighboring RNA-Seq
    supported intron upstream of the start codon within  the range of the maximum
    CDS size of that gene and with a multiplicity that is at least as high as 20%
    of the average intron multiplicity of that gene.
  type: boolean
  inputBinding:
    prefix: --filterOutShort
- id: to_slash_augustus_slash
  doc: Has higher priority than environment variable.
  type: string
  inputBinding:
    position: 0
- id: bam_tools_slash
  doc: variable). Has higher priority than the environment variable.
  type: string
  inputBinding:
    position: 1
- id: gmes_pet_apdo_tpl_slash
  doc: variable). Has higher priority than environment variable.
  type: string
  inputBinding:
    position: 2
- id: sam_tools_slash
  doc: variable) to fix BAM files automatically, if necessary. Has higher      priority
    than environment variable.
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- braker.pl
