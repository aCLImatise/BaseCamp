#!/usr/bin/env cwl-runner

baseCommand:
- featureCounts
class: CommandLineTool
cwlVersion: v1.0
id: featurecounts
inputs:
- doc: Specify format of the provided annotation file. Acceptable formats include
    'GTF' (or compatible GFF format) and 'SAF'. 'GTF' by default.  For SAF format,
    please refer to Users Guide.
  id: f
  inputBinding:
    prefix: -F
  type: string
- doc: Specify feature type in GTF annotation. 'exon' by  default. Features used for
    read counting will be  extracted from annotation using the provided value.
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: Specify attribute type in GTF annotation. 'gene_id' by  default. Meta-features
    used for read counting will be  extracted from annotation using the provided value.
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: Extract extra attribute types from the provided GTF annotation and include
    them in the counting output. These attribute types will not be used to group features.
    If more than one attribute type is provided they should be separated by comma.
  id: extra_attributes
  inputBinding:
    prefix: --extraAttributes
  type: boolean
- doc: Provide a chromosome name alias file to match chr names in annotation with
    those in the reads. This should be a two- column comma-delimited text file. Its
    first column should include chr names in the annotation and its second column
    should include chr names in the reads. Chr names are case sensitive. No column
    header should be included in the file.
  id: a
  inputBinding:
    prefix: -A
  type: string
- doc: Perform read counting at feature level (eg. counting  reads for exons rather
    than genes).
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: <5:3>    Reduce reads to their 5' most base or 3' most base. Read counting
    is then performed based on the single base the  read is reduced to.
  id: read_2pos
  inputBinding:
    prefix: --read2pos
  type: boolean
- doc: Multi-mapping reads will also be counted. For a multi- mapping read, all its
    reported alignments will be  counted. The 'NH' tag in BAM/SAM input is used to
    detect  multi-mapping reads.
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: Assign fractional counts to features. This option must be used together with
    '-M' or '-O' or both. When '-M' is specified, each reported alignment from a multi-mapping
    read (identified via 'NH' tag) will carry a fractional count of 1/x, instead of
    1 (one), where x is the total number of alignments reported for the same read.
    When '-O' is specified, each overlapping feature will receive a fractional count
    of 1/y, where y is the total number of features overlapping with the read. When
    both '-M' and '-O' are specified, each alignment will carry a fractional count
    of 1/(x*y).
  id: fraction
  inputBinding:
    prefix: --fraction
  type: boolean
- doc: The minimum mapping quality score a read must satisfy in order to be counted.
    For paired-end reads, at least one end should satisfy this criteria. 0 by default.
  id: q
  inputBinding:
    prefix: -Q
  type: long
- doc: Count split alignments only (ie. alignments with CIGAR string containing 'N').
    An example of split alignments is exon-spanning reads in RNA-seq data.
  id: split_only
  inputBinding:
    prefix: --splitOnly
  type: boolean
- doc: If specified, only non-split alignments (CIGAR strings do not contain letter
    'N') will be counted. All the other alignments will be ignored.
  id: non_split_only
  inputBinding:
    prefix: --nonSplitOnly
  type: boolean
- doc: Count primary alignments only. Primary alignments are  identified using bit
    0x100 in SAM/BAM FLAG field.
  id: primary
  inputBinding:
    prefix: --primary
  type: boolean
- doc: Ignore duplicate reads in read counting. Duplicate reads  are identified using
    bit Ox400 in BAM/SAM FLAG field. The  whole read pair is ignored if one of the
    reads is a  duplicate read for paired end data.
  id: ignored_up
  inputBinding:
    prefix: --ignoreDup
  type: boolean
- doc: 'Perform strand-specific read counting. A single integer value (applied to
    all input files) or a string of comma- separated values (applied to each corresponding
    input file) should be provided. Possible values include: 0 (unstranded), 1 (stranded)
    and 2 (reversely stranded). Default value is 0 (ie. unstranded read counting carried
    out for all input files).'
  id: s
  inputBinding:
    prefix: -s
  type: long
- doc: Count number of reads supporting each exon-exon junction. Junctions were identified
    from those exon-spanning reads in the input (containing 'N' in CIGAR string).
    Counting results are saved to a file named '<output_file>.jcounts'
  id: j
  inputBinding:
    prefix: -J
  type: boolean
- doc: Provide the name of a FASTA-format file that contains the reference sequences
    used in read mapping that produced the provided SAM/BAM files. This optional argument
    can be used with '-J' option to improve read counting for junctions.
  id: g
  inputBinding:
    prefix: -G
  type: string
- doc: If specified, fragments (or templates) will be counted instead of reads. This
    option is only applicable for paired-end reads; single-end reads are always counted
    as reads.
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: Only count read pairs that have both ends aligned.
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: Check validity of paired-end distance when counting read  pairs. Use -d and
    -D to set thresholds.
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: Minimum fragment/template length, 50 by default.
  id: d
  inputBinding:
    prefix: -d
  type: long
- doc: Maximum fragment/template length, 600 by default.
  id: d
  inputBinding:
    prefix: -D
  type: long
- doc: Do not count read pairs that have their two ends mapping  to different chromosomes
    or mapping to same chromosome  but on different strands.
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: Do not sort reads in BAM/SAM input. Note that reads from  the same pair are
    required to be located next to each  other in the input.
  id: do_not_sort
  inputBinding:
    prefix: --donotsort
  type: boolean
- doc: Number of the threads. 1 by default.
  id: t
  inputBinding:
    prefix: -T
  type: long
- doc: Assign reads by read group. "RG" tag is required to be present in the input
    BAM/SAM files.
  id: by_read_group
  inputBinding:
    prefix: --byReadGroup
  type: boolean
- doc: Count long reads such as Nanopore and PacBio reads. Long read counting can
    only run in one thread and only reads (not read-pairs) can be counted. There is
    no limitation on the number of 'M' operations allowed in a CIGAR string in long
    read counting.
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: 'Output detailed assignment results for each read or read- pair. Results are
    saved to a file that is in one of the following formats: CORE, SAM and BAM. See
    Users Guide for more info about these formats.'
  id: r
  inputBinding:
    prefix: -R
  type: string
- doc: Specify a directory to save the detailed assignment results. If unspecified,
    the directory where counting results are saved is used.
  id: rpath
  inputBinding:
    prefix: --Rpath
  type: string
- doc: Directory under which intermediate files are saved (later removed). By default,
    intermediate files will be saved to the directory specified in '-o' argument.
  id: tmpdir
  inputBinding:
    prefix: --tmpDir
  type: string
- doc: Maximum number of 'M' operations allowed in a CIGAR string. 10 by default.
    Both 'X' and '=' are treated as 'M' and adjacent 'M' operations are merged in
    the CIGAR string.
  id: max_mop
  inputBinding:
    prefix: --maxMOp
  type: long
- doc: Output verbose information for debugging, such as un- matched chromosome/contig
    names.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Output version of the program.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
