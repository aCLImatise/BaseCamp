class: CommandLineTool
id: counts_in_region.cwl
inputs:
- id: in_quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: "Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings\
    \ into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning\
    \ once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_count_files
  doc: "One or more count or alignment file(s) from a single\nsample or set of samples\
    \ to be pooled."
  type: string[]
  inputBinding:
    prefix: --count_files
- id: in_count_file_format
  doc: "Format of file containing alignments or counts\n(Default: BAM)"
  type: string
  inputBinding:
    prefix: --countfile_format
- id: in_sum
  doc: "Sum used in normalization of counts and RPKM/RPNT\ncalculations (Default:\
    \ total mapped reads/counts in\ndataset)"
  type: string
  inputBinding:
    prefix: --sum
- id: in_min_length
  doc: "Minimum read length required to be included (BAM &\nbowtie files only. Default:\
    \ 25)"
  type: long
  inputBinding:
    prefix: --min_length
- id: in_max_length
  doc: "Maximum read length permitted to be included (BAM &\nbowtie files only. Default:\
    \ 100)"
  type: long
  inputBinding:
    prefix: --max_length
- id: in_big_genome
  doc: "Use slower but memory-efficient implementation for big\ngenomes or for memory-limited\
    \ computers. For wiggle &\nbowtie files only."
  type: boolean
  inputBinding:
    prefix: --big_genome
- id: in_five_prime_variable
  doc: "Map read alignment to a variable offset from 5'\nposition of read, with offset\
    \ determined by read\nlength. Requires `--offset` below"
  type: boolean
  inputBinding:
    prefix: --fiveprime_variable
- id: in_five_prime
  doc: Map read alignment to 5' position.
  type: boolean
  inputBinding:
    prefix: --fiveprime
- id: in_three_prime
  doc: Map read alignment to 3' position
  type: boolean
  inputBinding:
    prefix: --threeprime
- id: in_center
  doc: "Subtract N positions from each end of read, and add\n1/(length-N), to each\
    \ remaining position, where N is\nspecified by `--nibble`"
  type: boolean
  inputBinding:
    prefix: --center
- id: in_offset
  doc: "For `--fiveprime` or `--threeprime`, provide an\ninteger representing the\
    \ offset into the read,\nstarting from either the 5' or 3' end, at which data\n\
    should be plotted. For `--fiveprime_variable`, provide\nthe filename of a two-column\
    \ tab-delimited text file,\nin which first column represents read length or the\n\
    special keyword `'default'`, and the second column\nrepresents the offset from\
    \ the five prime end of that\nread length at which the read should be mapped.\n\
    (Default: 0)"
  type: long
  inputBinding:
    prefix: --offset
- id: in_nibble
  doc: "For use with `--center` only. nt to remove from each\nend of read before mapping\
    \ (Default: 0)"
  type: long
  inputBinding:
    prefix: --nibble
- id: in_annotation_files
  doc: "[BED | BigBed | GTF2 | GFF3] [infile.[BED | BigBed | GTF2 | GFF3] ...]\nZero\
    \ or more annotation files (max 1 file if BigBed)"
  type: File
  inputBinding:
    prefix: --annotation_files
- id: in_annotation_format
  doc: "Format of annotation_files (Default: GTF2). Note: GFF3\nassembly assumes SO\
    \ v.2.5.2 feature ontologies, which\nmay or may not match your specific file."
  type: string
  inputBinding:
    prefix: --annotation_format
- id: in_add_three
  doc: "If supplied, coding regions will be extended by 3\nnucleotides at their 3'\
    \ ends (except for GTF2 files\nthat explicitly include `stop_codon` features).\
    \ Use if\nyour annotation file excludes stop codons from CDS."
  type: boolean
  inputBinding:
    prefix: --add_three
- id: in_tab_ix
  doc: "annotation_files are tabix-compressed and indexed\n(Default: False). Ignored\
    \ for BigBed files."
  type: boolean
  inputBinding:
    prefix: --tabix
- id: in_sorted
  doc: "annotation_files are sorted by chromosomal position\n(Default: False)"
  type: boolean
  inputBinding:
    prefix: --sorted
- id: in_bed_extra_columns
  doc: "Number of extra columns in BED file (e.g. in custom\nENCODE formats) or list\
    \ of names for those columns.\n(Default: 0)."
  type: string[]
  inputBinding:
    prefix: --bed_extra_columns
- id: in_mask_bed_extra_columns
  doc: "Number of extra columns in BED file (e.g. in custom\nENCODE formats) or list\
    \ of names for those columns.\n(Default: 0)."
  type: string[]
  inputBinding:
    prefix: --mask_bed_extra_columns
- id: in_maxmem
  doc: "Maximum desired memory footprint in MB to devote to\nBigBed/BigWig files.\
    \ May be exceeded by large queries.\n(Default: 0, No maximum)"
  type: long
  inputBinding:
    prefix: --maxmem
- id: in_mask_maxmem
  doc: "Maximum desired memory footprint in MB to devote to\nBigBed/BigWig files.\
    \ May be exceeded by large queries.\n(Default: 0, No maximum)"
  type: long
  inputBinding:
    prefix: --mask_maxmem
- id: in_gff_transcript_types
  doc: "GFF3 feature types to include as transcripts, even if\nno exons are present\
    \ (for GFF3 only; default: use SO\nv2.5.3 specification)"
  type: string[]
  inputBinding:
    prefix: --gff_transcript_types
- id: in_gff_exon_types
  doc: "GFF3 feature types to include as exons (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --gff_exon_types
- id: in_gff_cds_types
  doc: "GFF3 feature types to include as CDS (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --gff_cds_types
- id: in_mask_gff_transcript_types
  doc: "GFF3 feature types to include as transcripts, even if\nno exons are present\
    \ (for GFF3 only; default: use SO\nv2.5.3 specification)"
  type: string[]
  inputBinding:
    prefix: --mask_gff_transcript_types
- id: in_mask_gff_exon_types
  doc: "GFF3 feature types to include as exons (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --mask_gff_exon_types
- id: in_mask_gff_cds_types
  doc: "GFF3 feature types to include as CDS (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --mask_gff_cds_types
- id: in_mask_annotation_files
  doc: "[BED | BigBed | GTF2 | GFF3 | PSL] [infile.[BED | BigBed | GTF2 | GFF3 | PSL]\
    \ ...]\nZero or more annotation files (max 1 file if BigBed)"
  type: File
  inputBinding:
    prefix: --mask_annotation_files
- id: in_mask_annotation_format
  doc: "Format of mask_annotation_files (Default: GTF2). Note:\nGFF3 assembly assumes\
    \ SO v.2.5.2 feature ontologies,\nwhich may or may not match your specific file."
  type: string
  inputBinding:
    prefix: --mask_annotation_format
- id: in_mask_add_three
  doc: "If supplied, coding regions will be extended by 3\nnucleotides at their 3'\
    \ ends (except for GTF2 files\nthat explicitly include `stop_codon` features).\
    \ Use if\nyour annotation file excludes stop codons from CDS."
  type: boolean
  inputBinding:
    prefix: --mask_add_three
- id: in_mask_tab_ix
  doc: "mask_annotation_files are tabix-compressed and indexed\n(Default: False).\
    \ Ignored for BigBed files."
  type: boolean
  inputBinding:
    prefix: --mask_tabix
- id: in_mask_sorted
  doc: "mask_annotation_files are sorted by chromosomal\nposition (Default: False)\n"
  type: boolean
  inputBinding:
    prefix: --mask_sorted
- id: in_plastid_dot_genomics_do_troi_tools_dot_segment_chain_dot_from_str
  doc: '`counts`                  Number of reads mapping to region'
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: Output filename
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- counts_in_region
