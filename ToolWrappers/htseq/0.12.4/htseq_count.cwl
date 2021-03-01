class: CommandLineTool
id: htseq_count.cwl
inputs:
- id: in_format
  doc: "Type of <alignment_file> data. DEPRECATED: file format\nis detected automatically.\
    \ This option is ignored."
  type: string?
  inputBinding:
    prefix: --format
- id: in_order
  doc: "'pos' or 'name'. Sorting order of <alignment_file>\n(default: name). Paired-end\
    \ sequencing data must be\nsorted either by position or by read name, and the\n\
    sorting order must be specified. Ignored for single-\nend data."
  type: string?
  inputBinding:
    prefix: --order
- id: in_max_reads_in_buffer
  doc: "When <alignment_file> is paired end sorted by\nposition, allow only so many\
    \ reads to stay in memory\nuntil the mates are found (raising this number will\n\
    use more memory). Has no effect for single end or\npaired end sorted by name"
  type: long?
  inputBinding:
    prefix: --max-reads-in-buffer
- id: in_stranded
  doc: "Whether the data is from a strand-specific assay.\nSpecify 'yes', 'no', or\
    \ 'reverse' (default: yes).\n'reverse' means 'yes' with reversed strand\ninterpretation"
  type: string?
  inputBinding:
    prefix: --stranded
- id: in_mina_qual
  doc: "Skip all reads with MAPQ alignment quality lower than\nthe given minimum value\
    \ (default: 10). MAPQ is the 5th\ncolumn of a SAM/BAM file and its usage depends\
    \ on the\nsoftware used to map the reads."
  type: File?
  inputBinding:
    prefix: --minaqual
- id: in_type
  doc: "Feature type (3rd column in GTF file) to be used, all\nfeatures of other type\
    \ are ignored (default, suitable\nfor Ensembl GTF files: exon)"
  type: File?
  inputBinding:
    prefix: --type
- id: in_id_attr
  doc: "GTF attribute to be used as feature ID (default,\nsuitable for Ensembl GTF\
    \ files: gene_id). All feature\nof the right type (see -t option) within the same\
    \ GTF\nattribute will be added together. The typical way of\nusing this option\
    \ is to count all exonic reads from\neach gene and add the exons but other uses\
    \ are\npossible as well."
  type: string?
  inputBinding:
    prefix: --idattr
- id: in_additional_attr
  doc: "Additional feature attributes (default: none, suitable\nfor Ensembl GTF files:\
    \ gene_name). Use multiple times\nfor more than one additional attribute. These\n\
    attributes are only used as annotations in the output,\nwhile the determination\
    \ of how the counts are added\ntogether is done based on option -i."
  type: string?
  inputBinding:
    prefix: --additional-attr
- id: in_mode
  doc: "Mode to handle reads overlapping more than one feature\n(choices: union, intersection-strict,\
    \ intersection-\nnonempty; default: union)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_non_unique
  doc: "Whether and how to score reads that are not uniquely\naligned or ambiguously\
    \ assigned to features (choices:\nnone, all, fraction, random; default: none)"
  type: string?
  inputBinding:
    prefix: --nonunique
- id: in_secondary_alignments
  doc: Whether to score secondary alignments (0x100 flag)
  type: string?
  inputBinding:
    prefix: --secondary-alignments
- id: in_supplementary_alignments
  doc: Whether to score supplementary alignments (0x800 flag)
  type: string?
  inputBinding:
    prefix: --supplementary-alignments
- id: in_sam_out
  doc: "Write out all SAM alignment records into SAM/BAM files\n(one per input file\
    \ needed), annotating each line with\nits feature assignment (as an optional field\
    \ with tag\n'XF'). See the -p option to use BAM instead of SAM."
  type: File?
  inputBinding:
    prefix: --samout
- id: in_sam_out_format
  doc: Format to use with the --samout option.
  type: string?
  inputBinding:
    prefix: --samout-format
- id: in_delimiter
  doc: 'Column delimiter in output (default: TAB).'
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_counts_output
  doc: Filename to output the counts to instead of stdout.
  type: File?
  inputBinding:
    prefix: --counts_output
- id: in_append_output
  doc: "Append counts output. This option is useful if you\nhave already creates a\
    \ TSV/CSV/similar file with a\nheader for your samples (with additional columns\
    \ for\nthe feature name and any additionl attributes) and\nwant to fill in the\
    \ rest of the file."
  type: File?
  inputBinding:
    prefix: --append-output
- id: in_n_processes
  doc: 'Number of parallel CPU processes to use (default: 1).'
  type: long?
  inputBinding:
    prefix: --nprocesses
- id: in_feature_query
  doc: "Restrict to features descibed in this expression.\nCurrently supports a single\
    \ kind of expression:\nattribute == \"one attr\" to restrict the GFF to a\nsingle\
    \ gene or transcript, e.g. --feature-query\n'gene_name == \"ACTB\"' - notice the\
    \ single quotes\naround the argument of this option and the double\nquotes around\
    \ the gene name. Broader queries might\nbecome available in the future."
  type: string?
  inputBinding:
    prefix: --feature-query
- id: in_quiet
  doc: Suppress progress report
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_sam_filenames
  doc: "Path to the SAM/BAM files containing the mapped reads.\nIf '-' is selected,\
    \ read from standard input"
  type: string
  inputBinding:
    position: 0
- id: in_features_filename
  doc: Path to the GTF file containing the features
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_counts_output
  doc: Filename to output the counts to instead of stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_counts_output)
- id: out_append_output
  doc: "Append counts output. This option is useful if you\nhave already creates a\
    \ TSV/CSV/similar file with a\nheader for your samples (with additional columns\
    \ for\nthe feature name and any additionl attributes) and\nwant to fill in the\
    \ rest of the file."
  type: File?
  outputBinding:
    glob: $(inputs.in_append_output)
hints: []
cwlVersion: v1.1
baseCommand:
- htseq-count
