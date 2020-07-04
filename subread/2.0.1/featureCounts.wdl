version 1.0

task FeatureCounts {
  input {
    String? specify_format_provided
    String? specify_feature_types
    String? specify_attribute_type
    Boolean? extra_attributes
    String? provide_chromosome_name
    Boolean? perform_read_counting
    Boolean? read_two_pos
    Boolean? multimapping_reads_will
    Boolean? fraction
    Int? minimum_mapping_quality
    Boolean? split_only
    Boolean? non_split_only
    Boolean? primary
    Boolean? ignored_up
    Int? perform_strandspecific_read
    Boolean? count_number_reads
    String? provide_name_read
    Boolean? specified_fragments_templates
    Boolean? only_count_read
    Boolean? check_validity_read
    Int? minimum_fragmenttemplate_length
    Int? maximum_fragmenttemplate_length
    Boolean? count_read_pairs
    Boolean? do_not_sort
    Int? number_threads_default
    Boolean? by_read_group
    Boolean? count_long_reads
    String? output_detailed_assignment
    String? rpath
    String? tmpdir
    Int? max_mop
    Boolean? verbose
    Boolean? output_version_program
    String? var_33
    String? o
    String input_file_one
    String? input_file_two
  }
  command <<<
    featureCounts \
      ~{input_file_one} \
      ~{input_file_two} \
      ~{if defined(specify_format_provided) then ("-F " +  '"' + specify_format_provided + '"') else ""} \
      ~{if defined(specify_feature_types) then ("-t " +  '"' + specify_feature_types + '"') else ""} \
      ~{if defined(specify_attribute_type) then ("-g " +  '"' + specify_attribute_type + '"') else ""} \
      ~{true="--extraAttributes" false="" extra_attributes} \
      ~{if defined(provide_chromosome_name) then ("-A " +  '"' + provide_chromosome_name + '"') else ""} \
      ~{true="-f" false="" perform_read_counting} \
      ~{true="--read2pos" false="" read_two_pos} \
      ~{true="-M" false="" multimapping_reads_will} \
      ~{true="--fraction" false="" fraction} \
      ~{if defined(minimum_mapping_quality) then ("-Q " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{true="--splitOnly" false="" split_only} \
      ~{true="--nonSplitOnly" false="" non_split_only} \
      ~{true="--primary" false="" primary} \
      ~{true="--ignoreDup" false="" ignored_up} \
      ~{if defined(perform_strandspecific_read) then ("-s " +  '"' + perform_strandspecific_read + '"') else ""} \
      ~{true="-J" false="" count_number_reads} \
      ~{if defined(provide_name_read) then ("-G " +  '"' + provide_name_read + '"') else ""} \
      ~{true="-p" false="" specified_fragments_templates} \
      ~{true="-B" false="" only_count_read} \
      ~{true="-P" false="" check_validity_read} \
      ~{if defined(minimum_fragmenttemplate_length) then ("-d " +  '"' + minimum_fragmenttemplate_length + '"') else ""} \
      ~{if defined(maximum_fragmenttemplate_length) then ("-D " +  '"' + maximum_fragmenttemplate_length + '"') else ""} \
      ~{true="-C" false="" count_read_pairs} \
      ~{true="--donotsort" false="" do_not_sort} \
      ~{if defined(number_threads_default) then ("-T " +  '"' + number_threads_default + '"') else ""} \
      ~{true="--byReadGroup" false="" by_read_group} \
      ~{true="-L" false="" count_long_reads} \
      ~{if defined(output_detailed_assignment) then ("-R " +  '"' + output_detailed_assignment + '"') else ""} \
      ~{if defined(rpath) then ("--Rpath " +  '"' + rpath + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpDir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(max_mop) then ("--maxMOp " +  '"' + max_mop + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-v" false="" output_version_program} \
      ~{if defined(var_33) then ("-a " +  '"' + var_33 + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    specify_format_provided: "Specify format of the provided annotation file. Acceptable formats include 'GTF' (or compatible GFF format) and 'SAF'. 'GTF' by default.  For SAF format, please refer to Users Guide."
    specify_feature_types: "Specify feature type(s) in a GTF annotation. If multiple types are provided, they should be separated by ',' with no space in between. 'exon' by default. Rows in the annotation with a matched feature will be extracted and used for read mapping. "
    specify_attribute_type: "Specify attribute type in GTF annotation. 'gene_id' by  default. Meta-features used for read counting will be  extracted from annotation using the provided value."
    extra_attributes: "Extract extra attribute types from the provided GTF annotation and include them in the counting output. These attribute types will not be used to group features. If more than one attribute type is provided they should be separated by comma."
    provide_chromosome_name: "Provide a chromosome name alias file to match chr names in annotation with those in the reads. This should be a two- column comma-delimited text file. Its first column should include chr names in the annotation and its second column should include chr names in the reads. Chr names are case sensitive. No column header should be included in the file."
    perform_read_counting: "Perform read counting at feature level (eg. counting  reads for exons rather than genes)."
    read_two_pos: "<5:3>    Reduce reads to their 5' most base or 3' most base. Read counting is then performed based on the single base the  read is reduced to."
    multimapping_reads_will: "Multi-mapping reads will also be counted. For a multi- mapping read, all its reported alignments will be  counted. The 'NH' tag in BAM/SAM input is used to detect  multi-mapping reads."
    fraction: "Assign fractional counts to features. This option must be used together with '-M' or '-O' or both. When '-M' is specified, each reported alignment from a multi-mapping read (identified via 'NH' tag) will carry a fractional count of 1/x, instead of 1 (one), where x is the total number of alignments reported for the same read. When '-O' is specified, each overlapping feature will receive a fractional count of 1/y, where y is the total number of features overlapping with the read. When both '-M' and '-O' are specified, each alignment will carry a fractional count of 1/(x*y)."
    minimum_mapping_quality: "The minimum mapping quality score a read must satisfy in order to be counted. For paired-end reads, at least one end should satisfy this criteria. 0 by default."
    split_only: "Count split alignments only (ie. alignments with CIGAR string containing 'N'). An example of split alignments is exon-spanning reads in RNA-seq data."
    non_split_only: "If specified, only non-split alignments (CIGAR strings do not contain letter 'N') will be counted. All the other alignments will be ignored."
    primary: "Count primary alignments only. Primary alignments are  identified using bit 0x100 in SAM/BAM FLAG field."
    ignored_up: "Ignore duplicate reads in read counting. Duplicate reads  are identified using bit Ox400 in BAM/SAM FLAG field. The  whole read pair is ignored if one of the reads is a  duplicate read for paired end data."
    perform_strandspecific_read: "Perform strand-specific read counting. A single integer value (applied to all input files) or a string of comma- separated values (applied to each corresponding input file) should be provided. Possible values include: 0 (unstranded), 1 (stranded) and 2 (reversely stranded). Default value is 0 (ie. unstranded read counting carried out for all input files)."
    count_number_reads: "Count number of reads supporting each exon-exon junction. Junctions were identified from those exon-spanning reads in the input (containing 'N' in CIGAR string). Counting results are saved to a file named '<output_file>.jcounts'"
    provide_name_read: "Provide the name of a FASTA-format file that contains the reference sequences used in read mapping that produced the provided SAM/BAM files. This optional argument can be used with '-J' option to improve read counting for junctions."
    specified_fragments_templates: "If specified, fragments (or templates) will be counted instead of reads. This option is only applicable for paired-end reads; single-end reads are always counted as reads."
    only_count_read: "Only count read pairs that have both ends aligned."
    check_validity_read: "Check validity of paired-end distance when counting read  pairs. Use -d and -D to set thresholds."
    minimum_fragmenttemplate_length: "Minimum fragment/template length, 50 by default."
    maximum_fragmenttemplate_length: "Maximum fragment/template length, 600 by default."
    count_read_pairs: "Do not count read pairs that have their two ends mapping  to different chromosomes or mapping to same chromosome  but on different strands."
    do_not_sort: "Do not sort reads in BAM/SAM input. Note that reads from  the same pair are required to be located next to each  other in the input."
    number_threads_default: "Number of the threads. 1 by default."
    by_read_group: "Assign reads by read group. \"RG\" tag is required to be present in the input BAM/SAM files."
    count_long_reads: "Count long reads such as Nanopore and PacBio reads. Long read counting can only run in one thread and only reads (not read-pairs) can be counted. There is no limitation on the number of 'M' operations allowed in a CIGAR string in long read counting."
    output_detailed_assignment: "Output detailed assignment results for each read or read- pair. Results are saved to a file that is in one of the following formats: CORE, SAM and BAM. See Users Guide for more info about these formats."
    rpath: "Specify a directory to save the detailed assignment results. If unspecified, the directory where counting results are saved is used."
    tmpdir: "Directory under which intermediate files are saved (later removed). By default, intermediate files will be saved to the directory specified in '-o' argument."
    max_mop: "Maximum number of 'M' operations allowed in a CIGAR string. 10 by default. Both 'X' and '=' are treated as 'M' and adjacent 'M' operations are merged in the CIGAR string."
    verbose: "Output verbose information for debugging, such as un- matched chromosome/contig names."
    output_version_program: "Output version of the program."
    var_33: ""
    o: ""
    input_file_one: ""
    input_file_two: ""
  }
}