class: CommandLineTool
id: featureCounts.cwl
inputs:
- id: in_name_annotation_file
  doc: Name of an annotation file. GTF/GFF format by default. See
  type: File?
  inputBinding:
    prefix: -a
- id: in_more_format_information
  doc: for more format information. Inbuilt annotations
  type: string?
  inputBinding:
    prefix: -F
- id: in_name_including_read
  doc: "Name of output file including read counts. A separate file\nincluding summary\
    \ statistics of counting results is also\nincluded in the output ('<string>.summary').\
    \ Both files\nare in tab delimited format."
  type: File?
  inputBinding:
    prefix: -o
- id: in_specify_feature_types
  doc: "Specify feature type(s) in a GTF annotation. If multiple\ntypes are provided,\
    \ they should be separated by ',' with\nno space in between. 'exon' by default.\
    \ Rows in the\nannotation with a matched feature will be extracted and\nused for\
    \ read mapping."
  type: string?
  inputBinding:
    prefix: -t
- id: in_specify_attribute_type
  doc: "Specify attribute type in GTF annotation. 'gene_id' by\ndefault. Meta-features\
    \ used for read counting will be\nextracted from annotation using the provided\
    \ value."
  type: string?
  inputBinding:
    prefix: -g
- id: in_extra_attributes
  doc: "Extract extra attribute types from the provided GTF\nannotation and include\
    \ them in the counting output. These\nattribute types will not be used to group\
    \ features. If\nmore than one attribute type is provided they should be\nseparated\
    \ by comma."
  type: boolean?
  inputBinding:
    prefix: --extraAttributes
- id: in_provide_alias_file
  doc: "Provide a chromosome name alias file to match chr names in\nannotation with\
    \ those in the reads. This should be a two-\ncolumn comma-delimited text file.\
    \ Its first column should\ninclude chr names in the annotation and its second\
    \ column\nshould include chr names in the reads. Chr names are case\nsensitive.\
    \ No column header should be included in the\nfile."
  type: File?
  inputBinding:
    prefix: -A
- id: in_perform_read_counting
  doc: "Perform read counting at feature level (eg. counting\nreads for exons rather\
    \ than genes)."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_assign_reads_their
  doc: "Assign reads to all their overlapping meta-features (or\nfeatures if -f is\
    \ specified)."
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_min_overlap
  doc: "Minimum number of overlapping bases in a read that is\nrequired for read assignment.\
    \ 1 by default. Number of\noverlapping bases is counted from both reads if paired\n\
    end. If a negative value is provided, then a gap of up\nto specified size will\
    \ be allowed between read and the\nfeature that the read is assigned to."
  type: long?
  inputBinding:
    prefix: --minOverlap
- id: in_frac_overlap
  doc: "Minimum fraction of overlapping bases in a read that is\nrequired for read\
    \ assignment. Value should be within range\n[0,1]. 0 by default. Number of overlapping\
    \ bases is\ncounted from both reads if paired end. Both this option\nand '--minOverlap'\
    \ option need to be satisfied for read\nassignment."
  type: double?
  inputBinding:
    prefix: --fracOverlap
- id: in_frac_overlap_feature
  doc: "Minimum fraction of overlapping bases in a\nfeature that is required for read\
    \ assignment. Value\nshould be within range [0,1]. 0 by default."
  type: double?
  inputBinding:
    prefix: --fracOverlapFeature
- id: in_largest_overlap
  doc: "Assign reads to a meta-feature/feature that has the\nlargest number of overlapping\
    \ bases."
  type: boolean?
  inputBinding:
    prefix: --largestOverlap
- id: in_non_overlap
  doc: "Maximum number of non-overlapping bases in a read (or a\nread pair) that is\
    \ allowed when being assigned to a\nfeature. No limit is set by default."
  type: long?
  inputBinding:
    prefix: --nonOverlap
- id: in_non_overlap_feature
  doc: "Maximum number of non-overlapping bases in a feature\nthat is allowed in read\
    \ assignment. No limit is set by\ndefault."
  type: long?
  inputBinding:
    prefix: --nonOverlapFeature
- id: in_read_extension_five
  doc: "Reads are extended upstream by <int> bases from their\n5' end."
  type: long?
  inputBinding:
    prefix: --readExtension5
- id: in_read_extension_three
  doc: "Reads are extended upstream by <int> bases from their\n3' end."
  type: long?
  inputBinding:
    prefix: --readExtension3
- id: in_read_two_pos
  doc: "<5:3>    Reduce reads to their 5' most base or 3' most base. Read\ncounting\
    \ is then performed based on the single base the\nread is reduced to."
  type: boolean?
  inputBinding:
    prefix: --read2pos
- id: in_multimapping_reads_also
  doc: "Multi-mapping reads will also be counted. For a multi-\nmapping read, all\
    \ its reported alignments will be\ncounted. The 'NH' tag in BAM/SAM input is used\
    \ to detect\nmulti-mapping reads."
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_fraction
  doc: "Assign fractional counts to features. This option must\nbe used together with\
    \ '-M' or '-O' or both. When '-M' is\nspecified, each reported alignment from\
    \ a multi-mapping\nread (identified via 'NH' tag) will carry a fractional\ncount\
    \ of 1/x, instead of 1 (one), where x is the total\nnumber of alignments reported\
    \ for the same read. When '-O'\nis specified, each overlapping feature will receive\
    \ a\nfractional count of 1/y, where y is the total number of\nfeatures overlapping\
    \ with the read. When both '-M' and\n'-O' are specified, each alignment will carry\
    \ a fractional\ncount of 1/(x*y)."
  type: boolean?
  inputBinding:
    prefix: --fraction
- id: in_minimum_mapping_quality
  doc: "The minimum mapping quality score a read must satisfy in\norder to be counted.\
    \ For paired-end reads, at least one\nend should satisfy this criteria. 0 by default."
  type: long?
  inputBinding:
    prefix: -Q
- id: in_split_only
  doc: "Count split alignments only (ie. alignments with CIGAR\nstring containing\
    \ 'N'). An example of split alignments is\nexon-spanning reads in RNA-seq data."
  type: boolean?
  inputBinding:
    prefix: --splitOnly
- id: in_non_split_only
  doc: "If specified, only non-split alignments (CIGAR strings do\nnot contain letter\
    \ 'N') will be counted. All the other\nalignments will be ignored."
  type: boolean?
  inputBinding:
    prefix: --nonSplitOnly
- id: in_primary
  doc: "Count primary alignments only. Primary alignments are\nidentified using bit\
    \ 0x100 in SAM/BAM FLAG field."
  type: boolean?
  inputBinding:
    prefix: --primary
- id: in_ignored_up
  doc: "Ignore duplicate reads in read counting. Duplicate reads\nare identified using\
    \ bit Ox400 in BAM/SAM FLAG field. The\nwhole read pair is ignored if one of the\
    \ reads is a\nduplicate read for paired end data."
  type: boolean?
  inputBinding:
    prefix: --ignoreDup
- id: in_perform_strandspecific_read
  doc: "Perform strand-specific read counting. A single integer\nvalue (applied to\
    \ all input files) or a string of comma-\nseparated values (applied to each corresponding\
    \ input\nfile) should be provided. Possible values include:\n0 (unstranded), 1\
    \ (stranded) and 2 (reversely stranded).\nDefault value is 0 (ie. unstranded read\
    \ counting carried\nout for all input files)."
  type: long?
  inputBinding:
    prefix: -s
- id: in_count_number_reads
  doc: "Count number of reads supporting each exon-exon junction.\nJunctions were\
    \ identified from those exon-spanning reads\nin the input (containing 'N' in CIGAR\
    \ string). Counting\nresults are saved to a file named '<output_file>.jcounts'"
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_provide_name_fastaformat
  doc: "Provide the name of a FASTA-format file that contains the\nreference sequences\
    \ used in read mapping that produced the\nprovided SAM/BAM files. This optional\
    \ argument can be used\nwith '-J' option to improve read counting for junctions."
  type: File?
  inputBinding:
    prefix: -G
- id: in_specified_fragments_templates
  doc: "If specified, fragments (or templates) will be counted\ninstead of reads.\
    \ This option is only applicable for\npaired-end reads; single-end reads are always\
    \ counted as\nreads."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_only_count_read
  doc: Only count read pairs that have both ends aligned.
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_check_validity_counting
  doc: "Check validity of paired-end distance when counting read\npairs. Use -d and\
    \ -D to set thresholds."
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_minimum_fragmenttemplate_length
  doc: Minimum fragment/template length, 50 by default.
  type: long?
  inputBinding:
    prefix: -d
- id: in_maximum_fragmenttemplate_length
  doc: Maximum fragment/template length, 600 by default.
  type: long?
  inputBinding:
    prefix: -D
- id: in_count_read_pairs
  doc: "Do not count read pairs that have their two ends mapping\nto different chromosomes\
    \ or mapping to same chromosome\nbut on different strands."
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_do_not_sort
  doc: "Do not sort reads in BAM/SAM input. Note that reads from\nthe same pair are\
    \ required to be located next to each\nother in the input."
  type: boolean?
  inputBinding:
    prefix: --donotsort
- id: in_number_threads_default
  doc: Number of the threads. 1 by default.
  type: long?
  inputBinding:
    prefix: -T
- id: in_by_read_group
  doc: "Assign reads by read group. \"RG\" tag is required to be\npresent in the input\
    \ BAM/SAM files."
  type: boolean?
  inputBinding:
    prefix: --byReadGroup
- id: in_count_long_reads
  doc: "Count long reads such as Nanopore and PacBio reads. Long\nread counting can\
    \ only run in one thread and only reads\n(not read-pairs) can be counted. There\
    \ is no limitation on\nthe number of 'M' operations allowed in a CIGAR string\
    \ in\nlong read counting."
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_output_detailed_results
  doc: "Output detailed assignment results for each read or read-\npair. Results are\
    \ saved to a file that is in one of the\nfollowing formats: CORE, SAM and BAM.\
    \ See Users Guide for\nmore info about these formats."
  type: File?
  inputBinding:
    prefix: -R
- id: in_rpath
  doc: "Specify a directory to save the detailed assignment\nresults. If unspecified,\
    \ the directory where counting\nresults are saved is used."
  type: Directory?
  inputBinding:
    prefix: --Rpath
- id: in_tmpdir
  doc: "Directory under which intermediate files are saved (later\nremoved). By default,\
    \ intermediate files will be saved to\nthe directory specified in '-o' argument."
  type: Directory?
  inputBinding:
    prefix: --tmpDir
- id: in_max_mop
  doc: "Maximum number of 'M' operations allowed in a CIGAR\nstring. 10 by default.\
    \ Both 'X' and '=' are treated as 'M'\nand adjacent 'M' operations are merged\
    \ in the CIGAR\nstring."
  type: long?
  inputBinding:
    prefix: --maxMOp
- id: in_verbose
  doc: "Output verbose information for debugging, such as un-\nmatched chromosome/contig\
    \ names."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output_version_program
  doc: Output version of the program.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_input_file_two
  doc: ''
  type: long?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_including_read
  doc: "Name of output file including read counts. A separate file\nincluding summary\
    \ statistics of counting results is also\nincluded in the output ('<string>.summary').\
    \ Both files\nare in tab delimited format."
  type: File?
  outputBinding:
    glob: $(inputs.in_name_including_read)
- id: out_output_detailed_results
  doc: "Output detailed assignment results for each read or read-\npair. Results are\
    \ saved to a file that is in one of the\nfollowing formats: CORE, SAM and BAM.\
    \ See Users Guide for\nmore info about these formats."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_detailed_results)
hints: []
cwlVersion: v1.1
baseCommand:
- featureCounts
