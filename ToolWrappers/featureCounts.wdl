version 1.0

task FeatureCounts {
  input {
    File? name_annotation_file
    String? more_format_information
    File? name_including_read
    String? specify_feature_types
    String? specify_attribute_type
    Boolean? extra_attributes
    File? provide_chromosome_name
    Boolean? perform_read_counting
    Boolean? assign_reads_specified
    Int? min_overlap
    Float? frac_overlap
    Float? frac_overlap_feature
    Boolean? largest_overlap
    Int? non_overlap
    Int? non_overlap_feature
    Int? read_extension_five
    Int? read_extension_three
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
    File? provide_name_fastaformat
    Boolean? specified_fragments_templates
    Boolean? only_count_read
    Boolean? check_validity_counting
    Int? minimum_fragmenttemplate_length
    Int? maximum_fragmenttemplate_length
    Boolean? count_read_pairs
    Boolean? do_not_sort
    Int? number_threads_default
    Boolean? by_read_group
    Boolean? count_long_reads
    File? output_detailed_assignment
    Directory? rpath
    Directory? tmpdir
    Int? max_mop
    Boolean? verbose
    Boolean? output_version_program
    Int input_file_one
    Int? input_file_two
  }
  command <<<
    featureCounts \
      ~{input_file_one} \
      ~{input_file_two} \
      ~{if defined(name_annotation_file) then ("-a " +  '"' + name_annotation_file + '"') else ""} \
      ~{if defined(more_format_information) then ("-F " +  '"' + more_format_information + '"') else ""} \
      ~{if defined(name_including_read) then ("-o " +  '"' + name_including_read + '"') else ""} \
      ~{if defined(specify_feature_types) then ("-t " +  '"' + specify_feature_types + '"') else ""} \
      ~{if defined(specify_attribute_type) then ("-g " +  '"' + specify_attribute_type + '"') else ""} \
      ~{if (extra_attributes) then "--extraAttributes" else ""} \
      ~{if defined(provide_chromosome_name) then ("-A " +  '"' + provide_chromosome_name + '"') else ""} \
      ~{if (perform_read_counting) then "-f" else ""} \
      ~{if (assign_reads_specified) then "-O" else ""} \
      ~{if defined(min_overlap) then ("--minOverlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(frac_overlap) then ("--fracOverlap " +  '"' + frac_overlap + '"') else ""} \
      ~{if defined(frac_overlap_feature) then ("--fracOverlapFeature " +  '"' + frac_overlap_feature + '"') else ""} \
      ~{if (largest_overlap) then "--largestOverlap" else ""} \
      ~{if defined(non_overlap) then ("--nonOverlap " +  '"' + non_overlap + '"') else ""} \
      ~{if defined(non_overlap_feature) then ("--nonOverlapFeature " +  '"' + non_overlap_feature + '"') else ""} \
      ~{if defined(read_extension_five) then ("--readExtension5 " +  '"' + read_extension_five + '"') else ""} \
      ~{if defined(read_extension_three) then ("--readExtension3 " +  '"' + read_extension_three + '"') else ""} \
      ~{if (read_two_pos) then "--read2pos" else ""} \
      ~{if (multimapping_reads_will) then "-M" else ""} \
      ~{if (fraction) then "--fraction" else ""} \
      ~{if defined(minimum_mapping_quality) then ("-Q " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if (split_only) then "--splitOnly" else ""} \
      ~{if (non_split_only) then "--nonSplitOnly" else ""} \
      ~{if (primary) then "--primary" else ""} \
      ~{if (ignored_up) then "--ignoreDup" else ""} \
      ~{if defined(perform_strandspecific_read) then ("-s " +  '"' + perform_strandspecific_read + '"') else ""} \
      ~{if (count_number_reads) then "-J" else ""} \
      ~{if defined(provide_name_fastaformat) then ("-G " +  '"' + provide_name_fastaformat + '"') else ""} \
      ~{if (specified_fragments_templates) then "-p" else ""} \
      ~{if (only_count_read) then "-B" else ""} \
      ~{if (check_validity_counting) then "-P" else ""} \
      ~{if defined(minimum_fragmenttemplate_length) then ("-d " +  '"' + minimum_fragmenttemplate_length + '"') else ""} \
      ~{if defined(maximum_fragmenttemplate_length) then ("-D " +  '"' + maximum_fragmenttemplate_length + '"') else ""} \
      ~{if (count_read_pairs) then "-C" else ""} \
      ~{if (do_not_sort) then "--donotsort" else ""} \
      ~{if defined(number_threads_default) then ("-T " +  '"' + number_threads_default + '"') else ""} \
      ~{if (by_read_group) then "--byReadGroup" else ""} \
      ~{if (count_long_reads) then "-L" else ""} \
      ~{if defined(output_detailed_assignment) then ("-R " +  '"' + output_detailed_assignment + '"') else ""} \
      ~{if defined(rpath) then ("--Rpath " +  '"' + rpath + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpDir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(max_mop) then ("--maxMOp " +  '"' + max_mop + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (output_version_program) then "-v" else ""}
  >>>
  parameter_meta {
    name_annotation_file: "Name of an annotation file. GTF/GFF format by default. See"
    more_format_information: "for more format information. Inbuilt annotations"
    name_including_read: "Name of output file including read counts. A separate file\\nincluding summary statistics of counting results is also\\nincluded in the output ('<string>.summary'). Both files\\nare in tab delimited format."
    specify_feature_types: "Specify feature type(s) in a GTF annotation. If multiple\\ntypes are provided, they should be separated by ',' with\\nno space in between. 'exon' by default. Rows in the\\nannotation with a matched feature will be extracted and\\nused for read mapping."
    specify_attribute_type: "Specify attribute type in GTF annotation. 'gene_id' by\\ndefault. Meta-features used for read counting will be\\nextracted from annotation using the provided value."
    extra_attributes: "Extract extra attribute types from the provided GTF\\nannotation and include them in the counting output. These\\nattribute types will not be used to group features. If\\nmore than one attribute type is provided they should be\\nseparated by comma."
    provide_chromosome_name: "Provide a chromosome name alias file to match chr names in\\nannotation with those in the reads. This should be a two-\\ncolumn comma-delimited text file. Its first column should\\ninclude chr names in the annotation and its second column\\nshould include chr names in the reads. Chr names are case\\nsensitive. No column header should be included in the\\nfile."
    perform_read_counting: "Perform read counting at feature level (eg. counting\\nreads for exons rather than genes)."
    assign_reads_specified: "Assign reads to all their overlapping meta-features (or\\nfeatures if -f is specified)."
    min_overlap: "Minimum number of overlapping bases in a read that is\\nrequired for read assignment. 1 by default. Number of\\noverlapping bases is counted from both reads if paired\\nend. If a negative value is provided, then a gap of up\\nto specified size will be allowed between read and the\\nfeature that the read is assigned to."
    frac_overlap: "Minimum fraction of overlapping bases in a read that is\\nrequired for read assignment. Value should be within range\\n[0,1]. 0 by default. Number of overlapping bases is\\ncounted from both reads if paired end. Both this option\\nand '--minOverlap' option need to be satisfied for read\\nassignment."
    frac_overlap_feature: "Minimum fraction of overlapping bases in a\\nfeature that is required for read assignment. Value\\nshould be within range [0,1]. 0 by default."
    largest_overlap: "Assign reads to a meta-feature/feature that has the\\nlargest number of overlapping bases."
    non_overlap: "Maximum number of non-overlapping bases in a read (or a\\nread pair) that is allowed when being assigned to a\\nfeature. No limit is set by default."
    non_overlap_feature: "Maximum number of non-overlapping bases in a feature\\nthat is allowed in read assignment. No limit is set by\\ndefault."
    read_extension_five: "Reads are extended upstream by <int> bases from their\\n5' end."
    read_extension_three: "Reads are extended upstream by <int> bases from their\\n3' end."
    read_two_pos: "<5:3>    Reduce reads to their 5' most base or 3' most base. Read\\ncounting is then performed based on the single base the\\nread is reduced to."
    multimapping_reads_will: "Multi-mapping reads will also be counted. For a multi-\\nmapping read, all its reported alignments will be\\ncounted. The 'NH' tag in BAM/SAM input is used to detect\\nmulti-mapping reads."
    fraction: "Assign fractional counts to features. This option must\\nbe used together with '-M' or '-O' or both. When '-M' is\\nspecified, each reported alignment from a multi-mapping\\nread (identified via 'NH' tag) will carry a fractional\\ncount of 1/x, instead of 1 (one), where x is the total\\nnumber of alignments reported for the same read. When '-O'\\nis specified, each overlapping feature will receive a\\nfractional count of 1/y, where y is the total number of\\nfeatures overlapping with the read. When both '-M' and\\n'-O' are specified, each alignment will carry a fractional\\ncount of 1/(x*y)."
    minimum_mapping_quality: "The minimum mapping quality score a read must satisfy in\\norder to be counted. For paired-end reads, at least one\\nend should satisfy this criteria. 0 by default."
    split_only: "Count split alignments only (ie. alignments with CIGAR\\nstring containing 'N'). An example of split alignments is\\nexon-spanning reads in RNA-seq data."
    non_split_only: "If specified, only non-split alignments (CIGAR strings do\\nnot contain letter 'N') will be counted. All the other\\nalignments will be ignored."
    primary: "Count primary alignments only. Primary alignments are\\nidentified using bit 0x100 in SAM/BAM FLAG field."
    ignored_up: "Ignore duplicate reads in read counting. Duplicate reads\\nare identified using bit Ox400 in BAM/SAM FLAG field. The\\nwhole read pair is ignored if one of the reads is a\\nduplicate read for paired end data."
    perform_strandspecific_read: "Perform strand-specific read counting. A single integer\\nvalue (applied to all input files) or a string of comma-\\nseparated values (applied to each corresponding input\\nfile) should be provided. Possible values include:\\n0 (unstranded), 1 (stranded) and 2 (reversely stranded).\\nDefault value is 0 (ie. unstranded read counting carried\\nout for all input files)."
    count_number_reads: "Count number of reads supporting each exon-exon junction.\\nJunctions were identified from those exon-spanning reads\\nin the input (containing 'N' in CIGAR string). Counting\\nresults are saved to a file named '<output_file>.jcounts'"
    provide_name_fastaformat: "Provide the name of a FASTA-format file that contains the\\nreference sequences used in read mapping that produced the\\nprovided SAM/BAM files. This optional argument can be used\\nwith '-J' option to improve read counting for junctions."
    specified_fragments_templates: "If specified, fragments (or templates) will be counted\\ninstead of reads. This option is only applicable for\\npaired-end reads; single-end reads are always counted as\\nreads."
    only_count_read: "Only count read pairs that have both ends aligned."
    check_validity_counting: "Check validity of paired-end distance when counting read\\npairs. Use -d and -D to set thresholds."
    minimum_fragmenttemplate_length: "Minimum fragment/template length, 50 by default."
    maximum_fragmenttemplate_length: "Maximum fragment/template length, 600 by default."
    count_read_pairs: "Do not count read pairs that have their two ends mapping\\nto different chromosomes or mapping to same chromosome\\nbut on different strands."
    do_not_sort: "Do not sort reads in BAM/SAM input. Note that reads from\\nthe same pair are required to be located next to each\\nother in the input."
    number_threads_default: "Number of the threads. 1 by default."
    by_read_group: "Assign reads by read group. \\\"RG\\\" tag is required to be\\npresent in the input BAM/SAM files."
    count_long_reads: "Count long reads such as Nanopore and PacBio reads. Long\\nread counting can only run in one thread and only reads\\n(not read-pairs) can be counted. There is no limitation on\\nthe number of 'M' operations allowed in a CIGAR string in\\nlong read counting."
    output_detailed_assignment: "Output detailed assignment results for each read or read-\\npair. Results are saved to a file that is in one of the\\nfollowing formats: CORE, SAM and BAM. See Users Guide for\\nmore info about these formats."
    rpath: "Specify a directory to save the detailed assignment\\nresults. If unspecified, the directory where counting\\nresults are saved is used."
    tmpdir: "Directory under which intermediate files are saved (later\\nremoved). By default, intermediate files will be saved to\\nthe directory specified in '-o' argument."
    max_mop: "Maximum number of 'M' operations allowed in a CIGAR\\nstring. 10 by default. Both 'X' and '=' are treated as 'M'\\nand adjacent 'M' operations are merged in the CIGAR\\nstring."
    verbose: "Output verbose information for debugging, such as un-\\nmatched chromosome/contig names."
    output_version_program: "Output version of the program."
    input_file_one: ""
    input_file_two: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_including_read = "${in_name_including_read}"
    File out_output_detailed_assignment = "${in_output_detailed_assignment}"
  }
}