class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/featureCounts.cwl
inputs:
- id: specify_format_provided
  doc: Specify format of the provided annotation file. Acceptable formats include
    'GTF' (or compatible GFF format) and 'SAF'. 'GTF' by default.  For SAF format,
    please refer to Users Guide.
  type: string
  inputBinding:
    prefix: -F
- id: specify_feature_types
  doc: "Specify feature type(s) in a GTF annotation. If multiple types are provided,\
    \ they should be separated by ',' with no space in between. 'exon' by default.\
    \ Rows in the annotation with a matched feature will be extracted and used for\
    \ read mapping. "
  type: string
  inputBinding:
    prefix: -t
- id: specify_attribute_type
  doc: Specify attribute type in GTF annotation. 'gene_id' by  default. Meta-features
    used for read counting will be  extracted from annotation using the provided value.
  type: string
  inputBinding:
    prefix: -g
- id: extra_attributes
  doc: Extract extra attribute types from the provided GTF annotation and include
    them in the counting output. These attribute types will not be used to group features.
    If more than one attribute type is provided they should be separated by comma.
  type: boolean
  inputBinding:
    prefix: --extraAttributes
- id: provide_chromosome_name
  doc: Provide a chromosome name alias file to match chr names in annotation with
    those in the reads. This should be a two- column comma-delimited text file. Its
    first column should include chr names in the annotation and its second column
    should include chr names in the reads. Chr names are case sensitive. No column
    header should be included in the file.
  type: string
  inputBinding:
    prefix: -A
- id: perform_read_counting
  doc: Perform read counting at feature level (eg. counting  reads for exons rather
    than genes).
  type: boolean
  inputBinding:
    prefix: -f
- id: read_two_pos
  doc: <5:3>    Reduce reads to their 5' most base or 3' most base. Read counting
    is then performed based on the single base the  read is reduced to.
  type: boolean
  inputBinding:
    prefix: --read2pos
- id: multimapping_reads_will
  doc: Multi-mapping reads will also be counted. For a multi- mapping read, all its
    reported alignments will be  counted. The 'NH' tag in BAM/SAM input is used to
    detect  multi-mapping reads.
  type: boolean
  inputBinding:
    prefix: -M
- id: fraction
  doc: Assign fractional counts to features. This option must be used together with
    '-M' or '-O' or both. When '-M' is specified, each reported alignment from a multi-mapping
    read (identified via 'NH' tag) will carry a fractional count of 1/x, instead of
    1 (one), where x is the total number of alignments reported for the same read.
    When '-O' is specified, each overlapping feature will receive a fractional count
    of 1/y, where y is the total number of features overlapping with the read. When
    both '-M' and '-O' are specified, each alignment will carry a fractional count
    of 1/(x*y).
  type: boolean
  inputBinding:
    prefix: --fraction
- id: minimum_mapping_quality
  doc: The minimum mapping quality score a read must satisfy in order to be counted.
    For paired-end reads, at least one end should satisfy this criteria. 0 by default.
  type: long
  inputBinding:
    prefix: -Q
- id: split_only
  doc: Count split alignments only (ie. alignments with CIGAR string containing 'N').
    An example of split alignments is exon-spanning reads in RNA-seq data.
  type: boolean
  inputBinding:
    prefix: --splitOnly
- id: non_split_only
  doc: If specified, only non-split alignments (CIGAR strings do not contain letter
    'N') will be counted. All the other alignments will be ignored.
  type: boolean
  inputBinding:
    prefix: --nonSplitOnly
- id: primary
  doc: Count primary alignments only. Primary alignments are  identified using bit
    0x100 in SAM/BAM FLAG field.
  type: boolean
  inputBinding:
    prefix: --primary
- id: ignored_up
  doc: Ignore duplicate reads in read counting. Duplicate reads  are identified using
    bit Ox400 in BAM/SAM FLAG field. The  whole read pair is ignored if one of the
    reads is a  duplicate read for paired end data.
  type: boolean
  inputBinding:
    prefix: --ignoreDup
- id: perform_strandspecific_read
  doc: 'Perform strand-specific read counting. A single integer value (applied to
    all input files) or a string of comma- separated values (applied to each corresponding
    input file) should be provided. Possible values include: 0 (unstranded), 1 (stranded)
    and 2 (reversely stranded). Default value is 0 (ie. unstranded read counting carried
    out for all input files).'
  type: long
  inputBinding:
    prefix: -s
- id: count_number_reads
  doc: Count number of reads supporting each exon-exon junction. Junctions were identified
    from those exon-spanning reads in the input (containing 'N' in CIGAR string).
    Counting results are saved to a file named '<output_file>.jcounts'
  type: boolean
  inputBinding:
    prefix: -J
- id: provide_name_read
  doc: Provide the name of a FASTA-format file that contains the reference sequences
    used in read mapping that produced the provided SAM/BAM files. This optional argument
    can be used with '-J' option to improve read counting for junctions.
  type: string
  inputBinding:
    prefix: -G
- id: specified_fragments_templates
  doc: If specified, fragments (or templates) will be counted instead of reads. This
    option is only applicable for paired-end reads; single-end reads are always counted
    as reads.
  type: boolean
  inputBinding:
    prefix: -p
- id: only_count_read
  doc: Only count read pairs that have both ends aligned.
  type: boolean
  inputBinding:
    prefix: -B
- id: check_validity_read
  doc: Check validity of paired-end distance when counting read  pairs. Use -d and
    -D to set thresholds.
  type: boolean
  inputBinding:
    prefix: -P
- id: minimum_fragmenttemplate_length
  doc: Minimum fragment/template length, 50 by default.
  type: long
  inputBinding:
    prefix: -d
- id: maximum_fragmenttemplate_length
  doc: Maximum fragment/template length, 600 by default.
  type: long
  inputBinding:
    prefix: -D
- id: count_read_pairs
  doc: Do not count read pairs that have their two ends mapping  to different chromosomes
    or mapping to same chromosome  but on different strands.
  type: boolean
  inputBinding:
    prefix: -C
- id: do_not_sort
  doc: Do not sort reads in BAM/SAM input. Note that reads from  the same pair are
    required to be located next to each  other in the input.
  type: boolean
  inputBinding:
    prefix: --donotsort
- id: number_threads_default
  doc: Number of the threads. 1 by default.
  type: long
  inputBinding:
    prefix: -T
- id: by_read_group
  doc: Assign reads by read group. "RG" tag is required to be present in the input
    BAM/SAM files.
  type: boolean
  inputBinding:
    prefix: --byReadGroup
- id: count_long_reads
  doc: Count long reads such as Nanopore and PacBio reads. Long read counting can
    only run in one thread and only reads (not read-pairs) can be counted. There is
    no limitation on the number of 'M' operations allowed in a CIGAR string in long
    read counting.
  type: boolean
  inputBinding:
    prefix: -L
- id: output_detailed_assignment
  doc: 'Output detailed assignment results for each read or read- pair. Results are
    saved to a file that is in one of the following formats: CORE, SAM and BAM. See
    Users Guide for more info about these formats.'
  type: string
  inputBinding:
    prefix: -R
- id: rpath
  doc: Specify a directory to save the detailed assignment results. If unspecified,
    the directory where counting results are saved is used.
  type: string
  inputBinding:
    prefix: --Rpath
- id: tmpdir
  doc: Directory under which intermediate files are saved (later removed). By default,
    intermediate files will be saved to the directory specified in '-o' argument.
  type: string
  inputBinding:
    prefix: --tmpDir
- id: max_mop
  doc: Maximum number of 'M' operations allowed in a CIGAR string. 10 by default.
    Both 'X' and '=' are treated as 'M' and adjacent 'M' operations are merged in
    the CIGAR string.
  type: long
  inputBinding:
    prefix: --maxMOp
- id: verbose
  doc: Output verbose information for debugging, such as un- matched chromosome/contig
    names.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output_version_program
  doc: Output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
- id: var_33
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: input_file_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- featureCounts
