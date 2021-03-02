class: CommandLineTool
id: cuffcompare.cwl
inputs:
- id: in_text_file_process
  doc: "a text file with a list of Cufflinks GTF files to process instead\nof expecting\
    \ them as command line arguments (useful when a large number\nof GTF files should\
    \ be processed)"
  type: long?
  inputBinding:
    prefix: -i
- id: in_set_known_use
  doc: "set of known mRNAs to use as a reference for assessing\nthe accuracy of mRNAs\
    \ or gene models given in <input.gtf>"
  type: string?
  inputBinding:
    prefix: -r
- id: in_consider_only_reference_transcripts_thatoverlap
  doc: ", consider only the reference transcripts that\noverlap any of the input transfrags\
    \ (Sn correction)"
  type: string?
  inputBinding:
    prefix: -R
- id: in_consider_only_input_transcripts_thatoverlap
  doc: ", consider only the input transcripts that\noverlap any of the reference transcripts\
    \ (Sp correction);\n(Warning: this will discard all \"novel\" loci!)"
  type: string?
  inputBinding:
    prefix: -Q
- id: in_ignore_singleexon_transfrags
  doc: (ignore) single-exon transfrags and reference transcripts
  type: string?
  inputBinding:
    prefix: -M
- id: in_ignore_singleexon_transcripts
  doc: (ignore) single-exon reference transcripts
  type: string?
  inputBinding:
    prefix: -N
- id: in_be_multifasta_file
  doc: "can be a multi-fasta file with all the genomic sequences or\na directory containing\
    \ multiple single-fasta files (one file per contig);\nlower case bases will be\
    \ used to classify input transcripts as repeats"
  type: File?
  inputBinding:
    prefix: -s
- id: in_distance_range_allowed
  doc: "distance (range) allowed from free ends of terminal exons of reference\ntranscripts\
    \ when assessing exon accuracy (100)"
  type: long?
  inputBinding:
    prefix: -e
- id: in_distance_range_grouping
  doc: distance (range) for grouping transcript start sites (100)
  type: long?
  inputBinding:
    prefix: -d
- id: in_name_prefix_use
  doc: "name prefix to use for consensus transcripts in the\n<outprefix>.combined.gtf\
    \ file (default: 'TCONS')"
  type: File?
  inputBinding:
    prefix: -p
- id: in_transcripts_combinedgtf_file
  doc: the "contained" transcripts in the .combined.gtf file
  type: File?
  inputBinding:
    prefix: -C
- id: in_discard_intronredundant_transfrags
  doc: "not discard intron-redundant transfrags if they share the 5' end\n(if they\
    \ differ only at the 3' end))"
  type: long?
  inputBinding:
    prefix: -F
- id: in_gff_input_files
  doc: "GFF input file(s): do not assume Cufflinks GTF, do not\ndiscard any intron-redundant\
    \ transfrags)"
  type: File?
  inputBinding:
    prefix: -G
- id: in_generate_files_input
  doc: not generate .tmap and .refmap files for each input file
  type: File?
  inputBinding:
    prefix: -T
- id: in_processing_mode_showing
  doc: processing mode (showing all GFF parsing warnings)
  type: string?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cuffcompare
