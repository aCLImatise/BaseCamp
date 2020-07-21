class: CommandLineTool
id: ../../../counts_in_region.cwl
inputs:
- id: quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings\
    \ into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: count_files
  doc: One or more count or alignment file(s) from a single sample or set of samples
    to be pooled.
  type: string[]
  inputBinding:
    prefix: --count_files
- id: count_file_format
  doc: 'Format of file containing alignments or counts (Default: BAM)'
  type: string
  inputBinding:
    prefix: --countfile_format
- id: sum
  doc: 'Sum used in normalization of counts and RPKM/RPNT calculations (Default: total
    mapped reads/counts in dataset)'
  type: string
  inputBinding:
    prefix: --sum
- id: min_length
  doc: 'Minimum read length required to be included (BAM & bowtie files only. Default:
    25)'
  type: string
  inputBinding:
    prefix: --min_length
- id: max_length
  doc: 'Maximum read length permitted to be included (BAM & bowtie files only. Default:
    100)'
  type: string
  inputBinding:
    prefix: --max_length
- id: big_genome
  doc: Use slower but memory-efficient implementation for big genomes or for memory-limited
    computers. For wiggle & bowtie files only.
  type: boolean
  inputBinding:
    prefix: --big_genome
- id: five_prime_variable
  doc: Map read alignment to a variable offset from 5' position of read, with offset
    determined by read length. Requires `--offset` below
  type: boolean
  inputBinding:
    prefix: --fiveprime_variable
- id: five_prime
  doc: Map read alignment to 5' position.
  type: boolean
  inputBinding:
    prefix: --fiveprime
- id: three_prime
  doc: Map read alignment to 3' position
  type: boolean
  inputBinding:
    prefix: --threeprime
- id: center
  doc: Subtract N positions from each end of read, and add 1/(length-N), to each remaining
    position, where N is specified by `--nibble`
  type: boolean
  inputBinding:
    prefix: --center
- id: offset
  doc: "For `--fiveprime` or `--threeprime`, provide an integer representing the offset\
    \ into the read, starting from either the 5' or 3' end, at which data should be\
    \ plotted. For `--fiveprime_variable`, provide the filename of a two-column tab-delimited\
    \ text file, in which first column represents read length or the special keyword\
    \ `'default'`, and the second column represents the offset from the five prime\
    \ end of that read length at which the read should be mapped. (Default: 0)"
  type: string
  inputBinding:
    prefix: --offset
- id: nibble
  doc: 'For use with `--center` only. nt to remove from each end of read before mapping
    (Default: 0)'
  type: string
  inputBinding:
    prefix: --nibble
- id: annotation_format
  doc: 'Format of annotation_files (Default: GTF2). Note: GFF3 assembly assumes SO
    v.2.5.2 feature ontologies, which may or may not match your specific file.'
  type: string
  inputBinding:
    prefix: --annotation_format
- id: add_three
  doc: If supplied, coding regions will be extended by 3 nucleotides at their 3' ends
    (except for GTF2 files that explicitly include `stop_codon` features). Use if
    your annotation file excludes stop codons from CDS.
  type: boolean
  inputBinding:
    prefix: --add_three
- id: tab_ix
  doc: 'annotation_files are tabix-compressed and indexed (Default: False). Ignored
    for BigBed files.'
  type: boolean
  inputBinding:
    prefix: --tabix
- id: sorted
  doc: 'annotation_files are sorted by chromosomal position (Default: False)'
  type: boolean
  inputBinding:
    prefix: --sorted
- id: bed_extra_columns
  doc: 'Number of extra columns in BED file (e.g. in custom ENCODE formats) or list
    of names for those columns. (Default: 0).'
  type: string[]
  inputBinding:
    prefix: --bed_extra_columns
- id: mask_bed_extra_columns
  doc: 'Number of extra columns in BED file (e.g. in custom ENCODE formats) or list
    of names for those columns. (Default: 0).'
  type: string[]
  inputBinding:
    prefix: --mask_bed_extra_columns
- id: maxmem
  doc: 'Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May
    be exceeded by large queries. (Default: 0, No maximum)'
  type: long
  inputBinding:
    prefix: --maxmem
- id: mask_maxmem
  doc: 'Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May
    be exceeded by large queries. (Default: 0, No maximum)'
  type: string
  inputBinding:
    prefix: --mask_maxmem
- id: gff_transcript_types
  doc: 'GFF3 feature types to include as transcripts, even if no exons are present
    (for GFF3 only; default: use SO v2.5.3 specification)'
  type: string[]
  inputBinding:
    prefix: --gff_transcript_types
- id: gff_exon_types
  doc: 'GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --gff_exon_types
- id: gff_cds_types
  doc: 'GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --gff_cds_types
- id: mask_gff_transcript_types
  doc: 'GFF3 feature types to include as transcripts, even if no exons are present
    (for GFF3 only; default: use SO v2.5.3 specification)'
  type: string[]
  inputBinding:
    prefix: --mask_gff_transcript_types
- id: mask_gff_exon_types
  doc: 'GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --mask_gff_exon_types
- id: mask_gff_cds_types
  doc: 'GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --mask_gff_cds_types
- id: mask_annotation_format
  doc: 'Format of mask_annotation_files (Default: GTF2). Note: GFF3 assembly assumes
    SO v.2.5.2 feature ontologies, which may or may not match your specific file.'
  type: string
  inputBinding:
    prefix: --mask_annotation_format
- id: mask_add_three
  doc: If supplied, coding regions will be extended by 3 nucleotides at their 3' ends
    (except for GTF2 files that explicitly include `stop_codon` features). Use if
    your annotation file excludes stop codons from CDS.
  type: boolean
  inputBinding:
    prefix: --mask_add_three
- id: mask_tab_ix
  doc: 'mask_annotation_files are tabix-compressed and indexed (Default: False). Ignored
    for BigBed files.'
  type: boolean
  inputBinding:
    prefix: --mask_tabix
- id: mask_sorted
  doc: 'mask_annotation_files are sorted by chromosomal position (Default: False)'
  type: boolean
  inputBinding:
    prefix: --mask_sorted
- id: outfile
  doc: Output filename
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- counts_in_region
