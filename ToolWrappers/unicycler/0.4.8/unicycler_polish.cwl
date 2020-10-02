class: CommandLineTool
id: unicycler_polish.cwl
inputs:
- id: in_assembly
  doc: Input assembly to be polished
  type: string
  inputBinding:
    prefix: --assembly
- id: in_short_one
  doc: FASTQ file of short reads (first reads in each pair)
  type: long
  inputBinding:
    prefix: --short1
- id: in_short_two
  doc: "FASTQ file of short reads (second reads in each\npair)"
  type: long
  inputBinding:
    prefix: --short2
- id: in_pb_bax
  doc: PacBio raw bax.h5 read files
  type: string[]
  inputBinding:
    prefix: --pb_bax
- id: in_pb_bam
  doc: PacBio BAM read file
  type: File
  inputBinding:
    prefix: --pb_bam
- id: in_pb_fast_a
  doc: FASTA file of PacBio reads
  type: File
  inputBinding:
    prefix: --pb_fasta
- id: in_long_reads
  doc: FASTQ/FASTA file of long reads
  type: File
  inputBinding:
    prefix: --long_reads
- id: in_no_fix_local
  doc: 'do not fix local misassemblies (default: False)'
  type: boolean
  inputBinding:
    prefix: --no_fix_local
- id: in_min_insert
  doc: 'minimum valid short read insert size (default: auto)'
  type: long
  inputBinding:
    prefix: --min_insert
- id: in_max_insert
  doc: 'maximum valid short read insert size (default: auto)'
  type: long
  inputBinding:
    prefix: --max_insert
- id: in_min_align_length
  doc: 'Minimum long read alignment length (default: 1000)'
  type: long
  inputBinding:
    prefix: --min_align_length
- id: in_homopolymer
  doc: "Long read polish changes to a homopolymer of this\nlength or greater will\
    \ be ignored (default: 4)"
  type: long
  inputBinding:
    prefix: --homopolymer
- id: in_large
  doc: "Variants of this size or greater will be assess as\nlarge variants (default:\
    \ 10)"
  type: long
  inputBinding:
    prefix: --large
- id: in_illumina_alt
  doc: "When assessing long read changes with short read\nalignments, a variant will\
    \ only be applied if the\nalternative occurrences in the short read alignments\n\
    exceed this percentage (default: 5)"
  type: long
  inputBinding:
    prefix: --illumina_alt
- id: in_free_bayes_qual_cut_off
  doc: "Reject Pilon substitutions from long reads if the\nFreeBayes quality is less\
    \ than this value (default:\n10.0)"
  type: double
  inputBinding:
    prefix: --freebayes_qual_cutoff
- id: in_threads
  doc: "CPU threads to use in alignment and consensus\n(default: number of CPUs)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: "Level of stdout information (0 to 3, default: 2)\n0 = no stdout, 1 = basic\
    \ progress indicators,\n2 = extra info, 3 = debugging info"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_sam_tools
  doc: 'path to samtools executable (default: samtools)'
  type: File
  inputBinding:
    prefix: --samtools
- id: in_bowtie_two
  doc: 'path to bowtie2 executable (default: bowtie2)'
  type: long
  inputBinding:
    prefix: --bowtie2
- id: in_minimap_two
  doc: 'path to minimap2 executable (default: minimap2)'
  type: long
  inputBinding:
    prefix: --minimap2
- id: in_free_bayes
  doc: 'path to freebayes executable (default: freebayes)'
  type: File
  inputBinding:
    prefix: --freebayes
- id: in_pitchfork
  doc: "Path to Pitchfork installation of PacBio tools\n(should contain bin and lib\
    \ directories) (default: )"
  type: File
  inputBinding:
    prefix: --pitchfork
- id: in_bax_two_bam
  doc: 'path to bax2bam executable (default: bax2bam)'
  type: long
  inputBinding:
    prefix: --bax2bam
- id: in_pb_align
  doc: 'path to pbalign executable (default: pbalign)'
  type: File
  inputBinding:
    prefix: --pbalign
- id: in_arrow
  doc: 'path to arrow executable (default: arrow)'
  type: File
  inputBinding:
    prefix: --arrow
- id: in_pilon
  doc: 'path to pilon jar file (default: pilon*.jar)'
  type: File
  inputBinding:
    prefix: --pilon
- id: in_java
  doc: 'path to java executable (default: java)'
  type: File
  inputBinding:
    prefix: --java
- id: in_ale
  doc: 'path to ALE executable (default: ALE)'
  type: File
  inputBinding:
    prefix: --ale
- id: in_rac_on
  doc: 'path to racon executable (default: racon)'
  type: File
  inputBinding:
    prefix: --racon
- id: in_minimap
  doc: 'path to miniasm executable (default: minimap)'
  type: File
  inputBinding:
    prefix: --minimap
- id: in_nuc_mer
  doc: 'path to nucmer executable (default: nucmer)'
  type: File
  inputBinding:
    prefix: --nucmer
- id: in_shows_nps
  doc: 'path to show-snps executable (default: show-snps)'
  type: File
  inputBinding:
    prefix: --showsnps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- unicycler_polish
