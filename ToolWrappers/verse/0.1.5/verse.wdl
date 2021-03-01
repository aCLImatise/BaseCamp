version 1.0

task Verse {
  input {
    File? give_name_onlysupports
    File? give_general_name
    Int? running_mode_htseqintersectionnonempty
    File? specify_feature_type
    String? specify_geneidentifier_attribute
    Boolean? input_file_pairedend
    Int? indicate_strandspecific_read
    Int? minimum_mapping_quality
    Boolean? output_gene_length
    File? output_read_details
    Int? number_threads_used
    Boolean? single_end
    Boolean? assign_independently
    Int? read_extension_five
    Int? read_extension_three
    Int? min_read_overlap
    Int? max_read_non_overlap
    Boolean? count_split_alignments_only
    Boolean? read_two_pos
    Boolean? ignored_up
    Int? mind_if_ambiguous
    Boolean? non_empty_modified
    Boolean? multithread_decompress
    Boolean? specified_length_tlen
    Int? minimum_templateread_pair
    Int? maximum_templateread_pair
    Boolean? specified_only_read
    Boolean? specified_chimeric_read
    Boolean? output_version_program
    Boolean? show_details_running
    String input_file
  }
  command <<<
    verse \
      ~{input_file} \
      ~{if defined(give_name_onlysupports) then ("-a " +  '"' + give_name_onlysupports + '"') else ""} \
      ~{if defined(give_general_name) then ("-o " +  '"' + give_general_name + '"') else ""} \
      ~{if defined(running_mode_htseqintersectionnonempty) then ("-z " +  '"' + running_mode_htseqintersectionnonempty + '"') else ""} \
      ~{if defined(specify_feature_type) then ("-t " +  '"' + specify_feature_type + '"') else ""} \
      ~{if defined(specify_geneidentifier_attribute) then ("-g " +  '"' + specify_geneidentifier_attribute + '"') else ""} \
      ~{if (input_file_pairedend) then "-S" else ""} \
      ~{if defined(indicate_strandspecific_read) then ("-s " +  '"' + indicate_strandspecific_read + '"') else ""} \
      ~{if defined(minimum_mapping_quality) then ("-Q " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if (output_gene_length) then "-l" else ""} \
      ~{if (output_read_details) then "-R" else ""} \
      ~{if defined(number_threads_used) then ("-T " +  '"' + number_threads_used + '"') else ""} \
      ~{if (single_end) then "--singleEnd" else ""} \
      ~{if (assign_independently) then "--assignIndependently" else ""} \
      ~{if defined(read_extension_five) then ("--readExtension5 " +  '"' + read_extension_five + '"') else ""} \
      ~{if defined(read_extension_three) then ("--readExtension3 " +  '"' + read_extension_three + '"') else ""} \
      ~{if defined(min_read_overlap) then ("--minReadOverlap " +  '"' + min_read_overlap + '"') else ""} \
      ~{if defined(max_read_non_overlap) then ("--maxReadNonoverlap " +  '"' + max_read_non_overlap + '"') else ""} \
      ~{if (count_split_alignments_only) then "--countSplitAlignmentsOnly" else ""} \
      ~{if (read_two_pos) then "--read2pos" else ""} \
      ~{if (ignored_up) then "--ignoreDup" else ""} \
      ~{if defined(mind_if_ambiguous) then ("--minDifAmbiguous " +  '"' + mind_if_ambiguous + '"') else ""} \
      ~{if (non_empty_modified) then "--nonemptyModified" else ""} \
      ~{if (multithread_decompress) then "--multithreadDecompress" else ""} \
      ~{if (specified_length_tlen) then "-P" else ""} \
      ~{if defined(minimum_templateread_pair) then ("-d " +  '"' + minimum_templateread_pair + '"') else ""} \
      ~{if defined(maximum_templateread_pair) then ("-D " +  '"' + maximum_templateread_pair + '"') else ""} \
      ~{if (specified_only_read) then "-B" else ""} \
      ~{if (specified_chimeric_read) then "-C" else ""} \
      ~{if (output_version_program) then "-v" else ""} \
      ~{if (show_details_running) then "-Z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    give_name_onlysupports: "Give the name of the annotation file. The program currently only\\nsupports GTF format."
    give_general_name: "Give the general name of the output file, e.g., 'Sample_A'.\\nThe summary file will be named 'Sample_A.summary.txt.'\\nThe file containing gene counts will be named 'Sample_A.exon.txt',\\n'Sample_A.intron.txt', etc."
    running_mode_htseqintersectionnonempty: "The Running Mode: 0 by default (featureCounts), 1 (HTSeq-Union),\\n2 (HTSeq-Intersection_strict), 3 (HTSeq-Intersection_nonempty),\\n4 (Union_strict), 5 (Cover_length).\\nPlease refer to the manual or use '-Z' to check the details of\\neach mode."
    specify_feature_type: "Specify the feature type. Only rows which have the matched\\nfeature type in the provided GTF annotation file will be included\\nfor read counting. 'exon' by default.\\nProviding a list of feature types (e.g., -t 'exon;intron;mito')\\nwill automatically enter hierarchical_assign mode. If the user\\nwants to assign independently for each feature type, please\\nspecify '--assignIndependently'. Use -Z to check the details."
    specify_geneidentifier_attribute: "Specify the gene_identifier attribute, which is normally 'gene_id'\\nor 'gene_name'. 'gene_id' by default."
    input_file_pairedend: "If the input file is paired-end data but not sorted by read name,\\nthis option MUST be specified."
    indicate_strandspecific_read: "Indicate if strand-specific read counting should be performed.\\nIt has three possible values:  0 (unstranded), 1 (stranded) and\\n2 (reversely stranded). 0 by default."
    minimum_mapping_quality: "The minimum mapping quality score a read must satisfy in order\\nto be counted. For paired-end reads, at least one end should\\nsatisfy this criteria. 0 by default."
    output_gene_length: "Output the gene length. This length is feature_type specific,\\nwhich means the length in an exon_count file will be the total\\nexon length of each gene, the length in an intron_count file will\\nbe the total intron length, etc."
    output_read_details: "Output read assignment details for each read/read pairs. The\\ndetails will be saved to a tab-delimited file that contains five\\ncolumns including read name, status(assigned or the reason if not\\nassigned), feature type and assigned gene name."
    number_threads_used: "Number of threads used for read assignment. 1 by default.\\nNote that when running, VERSE will initiate one main thread and\\nat least one helper thread for read assignment. This option\\nspecifies the number of helper threads."
    single_end: "If specified, VERSE will assume the input is\\nsingle-end data, and assign every reads individually. If this is\\nnot specified(default), the input will be treated as paired-end\\ndata. The 'missing mate' count will show how many reads are not\\nin pairs. VERSE can correctly assign single-end data in paired-\\nend mode, but it will take longer and the reads will all be\\ncounted as missing mates. So it is recommended to specify this\\nif the user knows it is single-end."
    assign_independently: "If specified, VERSE will assign reads to listed\\nfeature types independently. This has the same effect as running\\nVERSE separately for each feature type, except that it only\\nrequires one run, thus is more efficient."
    read_extension_five: "Reads are extended upstream by <int> bases from\\ntheir 5' end."
    read_extension_three: "Reads are extended upstream by <int> bases from\\ntheir 3' end."
    min_read_overlap: "Specify the minimum number of overlapped bases\\nrequired to assign a read to a feature. 1 by default."
    max_read_non_overlap: "Specify the maximum number of non-overlapped bases\\na read can have. A read is considered no_feature if its number of\\nnon-overlapped bases exceeds this threshold. This option is not\\nuseful in strict mode since it requires the assigned feature to\\noverlap every base of the read."
    count_split_alignments_only: "If specified, only split alignments (CIGAR\\nstrings containing letter `N') will be counted. All the other\\nalignments will be ignored. An example of split alignments is\\nthe exon-spanning reads in RNA-seq data."
    read_two_pos: "<5:3>            The read is reduced to its 5' most base or 3'\\nmost base. Read summarization is then performed based on the\\nsingle base which the read is reduced to."
    ignored_up: "If specified, reads that were marked as\\nduplicates will be ignored. Bit Ox400 in FLAG field of SAM/BAM\\nfile is used for identifying duplicate reads. In paired end\\ndata, the entire read pair will be ignored if at least one end\\nis found to be a duplicate read."
    mind_if_ambiguous: "This option can only be used in VERSE-cover_length\\nmode. When the read or the read pair hits more than one genes,\\nthe number of bases overlapped by each gene will be calculated.\\nIf the covered_length difference between the most covered gene\\nand the second most covered gene is smaller than this specified\\nvalue, the read will be set ambiguous. 1 base difference by default."
    non_empty_modified: "This option can only be used in intersection_\\nnonempty mode. In cases where HTSeq would assign multi-hit reads\\nto no_feature, VERSE will assign those to ambiguous."
    multithread_decompress: "BAM files generated with SAMTools or STAR after\\nyear 2013 has a slight format change which allows multithreaded\\ndecompression. BAM processing will be faster if this option is\\nspecifed and multiple core is used."
    specified_length_tlen: "If specified, template length (TLEN in SAM specification) will be\\nchecked when assigning read pairs (templates) to genes. This option\\nis only applicable in paired-end mode. The distance thresholds\\nshould be specified using -d and -D options."
    minimum_templateread_pair: "Minimum template(read pair) length, 50 by default."
    maximum_templateread_pair: "Maximum template(read pair) length, 600 by default."
    specified_only_read: "If specified, only read pairs that have both ends successfully\\naligned will be considered for summarization. This option is only\\napplicable for paired-end reads."
    specified_chimeric_read: "If specified, the chimeric read pairs (those that have their two\\nends aligned to different chromosomes) will NOT be included for\\nsummarization. This option is only applicable for paired-end data."
    output_version_program: "Output version of the program."
    show_details_running: "Show details about the running mode or scheme."
    input_file: "Give the name of input read file that contains the read mapping\\nresults. Format of input file is automatically determined (SAM/BAM)\\nIf it is paired-end data, the file MUST be name-sorted, otherwise\\nthe user MUST specify -S, or use samtools to sort it by name."
  }
  output {
    File out_stdout = stdout()
    File out_give_general_name = "${in_give_general_name}"
    File out_output_read_details = "${in_output_read_details}"
  }
}