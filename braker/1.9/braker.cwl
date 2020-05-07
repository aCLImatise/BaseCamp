class: CommandLineTool
id: braker.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- braker.pl
