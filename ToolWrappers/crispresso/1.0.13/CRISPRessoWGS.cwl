class: CommandLineTool
id: CRISPRessoWGS.cwl
inputs:
- id: in_analysis
  doc: "CRISPR/Cas9 outcomes from WGS data-\n)                                 )"
  type: long?
  inputBinding:
    prefix: -Analysis
- id: in_bam_file
  doc: 'WGS aligned bam file (default: bam filename)'
  type: File?
  inputBinding:
    prefix: --bam_file
- id: in_region_file
  doc: "Regions description file. A BED format file containing\nthe regions to analyze,\
    \ one per line. The REQUIRED\ncolumns are: chr_id(chromosome name), bpstart(start\n\
    position), bpend(end position), the optional columns\nare:name (an unique indentifier\
    \ for the region),\nguide_seq, expected_hdr_amplicon_seq,coding_seq, see\nCRISPResso\
    \ help for more details on these last 3\nparameters) (default: )"
  type: File?
  inputBinding:
    prefix: --region_file
- id: in_reference_file
  doc: "A FASTA format reference file (for example hg19.fa for\nthe human genome)\
    \ (default: )"
  type: File?
  inputBinding:
    prefix: --reference_file
- id: in_min_reads_to_use_region
  doc: "Minimum number of reads that align to a region to\nperform the CRISPResso\
    \ analysis (default: 10)"
  type: long?
  inputBinding:
    prefix: --min_reads_to_use_region
- id: in_gene_annotations
  doc: "Gene Annotation Table from UCSC Genome Browser Tables\n(http://genome.ucsc.edu/cgi-\n\
    bin/hgTables?command=start), please select as table\n\"knowGene\", as output format\
    \ \"all fields from selected\ntable\" and as file returned \"gzip compressed\"\
    \n(default: )"
  type: File?
  inputBinding:
    prefix: --gene_annotations
- id: in_min_average_read_quality
  doc: "Minimum average quality score (phred33) to keep a read\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --min_average_read_quality
- id: in_min_single_bp_quality
  doc: "Minimum single bp score (phred33) to keep a read\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --min_single_bp_quality
- id: in_min_identity_score
  doc: 'Min identity score for the alignment (default: 60.0)'
  type: long?
  inputBinding:
    prefix: --min_identity_score
- id: in_name
  doc: 'Output name (default: )'
  type: string?
  inputBinding:
    prefix: --name
- id: in_trim_sequences
  doc: "Enable the trimming of Illumina adapters with\nTrimmomatic (default: False)"
  type: Directory?
  inputBinding:
    prefix: --trim_sequences
- id: in_trim_mo_matic_options_string
  doc: "Override options for Trimmomatic (default:\nILLUMINACLIP:/usr/local/lib/python2.7/site-\n\
    packages/CRISPResso/data/NexteraPE-\nPE.fa:0:90:10:0:true MINLEN:40)"
  type: double?
  inputBinding:
    prefix: --trimmomatic_options_string
- id: in_min_paired_end_reads_overlap
  doc: "Minimum required overlap length between two reads to\nprovide a confident\
    \ overlap. (default: 4)"
  type: long?
  inputBinding:
    prefix: --min_paired_end_reads_overlap
- id: in_hide_mutations_outside_window_nhej
  doc: "This parameter allows to visualize only the mutations\noverlapping the cleavage\
    \ site and used to classify a\nread as NHEJ. This parameter has no effect on the\n\
    quanitification of the NHEJ. It may be helpful to mask\na pre-existing and known\
    \ mutations or sequencing\nerrors outside the window used for quantification of\n\
    NHEJ events. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --hide_mutations_outside_window_NHEJ
- id: in_window_around_sg_rna
  doc: "Window(s) in bp around the cleavage position (half on\non each side) as determined\
    \ by the provide guide RNA\nsequence to quantify the indels. Any indels outside\n\
    this window are excluded. A value of 0 disables this\nfilter. (default: 1)"
  type: long?
  inputBinding:
    prefix: --window_around_sgrna
- id: in_cleavage_offset
  doc: "Cleavage offset to use within respect to the 3' end of\nthe provided sgRNA\
    \ sequence. Remember that the sgRNA\nsequence must be entered without the PAM.\
    \ The default\nis -3 and is suitable for the SpCas9 system. For\nalternate nucleases,\
    \ other cleavage offsets may be\nappropriate, for example, if using Cpf1 this\
    \ parameter\nwould be set to 1. (default: -3)"
  type: long?
  inputBinding:
    prefix: --cleavage_offset
- id: in_exclude_bp_from_left
  doc: "Exclude bp from the left side of the amplicon sequence\nfor the quantification\
    \ of the indels (default: 5)"
  type: long?
  inputBinding:
    prefix: --exclude_bp_from_left
- id: in_exclude_bp_from_right
  doc: "Exclude bp from the right side of the amplicon\nsequence for the quantification\
    \ of the indels\n(default: 5)"
  type: long?
  inputBinding:
    prefix: --exclude_bp_from_right
- id: in_hdr_perfect_alignment_threshold
  doc: "Sequence homology % for an HDR occurrence (default:\n98.0)"
  type: double?
  inputBinding:
    prefix: --hdr_perfect_alignment_threshold
- id: in_ignore_substitutions
  doc: "Ignore substitutions events for the quantification and\nvisualization (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --ignore_substitutions
- id: in_ignore_insertions
  doc: "Ignore insertions events for the quantification and\nvisualization (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --ignore_insertions
- id: in_ignore_deletions
  doc: "Ignore deletions events for the quantification and\nvisualization (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --ignore_deletions
- id: in_needle_options_string
  doc: "Override options for the Needle aligner (default:\n-gapopen=10 -gapextend=0.5\
    \ -awidth3=5000)"
  type: double?
  inputBinding:
    prefix: --needle_options_string
- id: in_keep_intermediate
  doc: 'Keep all the intermediate files (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_intermediate
- id: in_dump
  doc: "Dump numpy arrays and pandas dataframes to file for\ndebugging purposes (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_save_also_png
  doc: "Save also .png images additionally to .pdf files\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --save_also_png
- id: in_n_processes
  doc: "Specify the number of processes to use for the\nquantification. Please use\
    \ with caution since\nincreasing this parameter will increase significantly\n\
    the memory required to run CRISPResso. (default: 1)\n"
  type: long?
  inputBinding:
    prefix: --n_processes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gene_annotations
  doc: "Gene Annotation Table from UCSC Genome Browser Tables\n(http://genome.ucsc.edu/cgi-\n\
    bin/hgTables?command=start), please select as table\n\"knowGene\", as output format\
    \ \"all fields from selected\ntable\" and as file returned \"gzip compressed\"\
    \n(default: )"
  type: File?
  outputBinding:
    glob: $(inputs.in_gene_annotations)
- id: out_trim_sequences
  doc: "Enable the trimming of Illumina adapters with\nTrimmomatic (default: False)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_trim_sequences)
hints: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoWGS
