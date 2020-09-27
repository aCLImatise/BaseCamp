class: CommandLineTool
id: verse.cwl
inputs:
- id: in_give_name_annotation
  doc: "Give the name of the annotation file. The program currently only\nsupports\
    \ GTF format."
  type: File
  inputBinding:
    prefix: -a
- id: in_give_general_name
  doc: "Give the general name of the output file, e.g., 'Sample_A'.\nThe summary file\
    \ will be named 'Sample_A.summary.txt.'\nThe file containing gene counts will\
    \ be named 'Sample_A.exon.txt',\n'Sample_A.intron.txt', etc."
  type: File
  inputBinding:
    prefix: -o
- id: in_running_mode_default
  doc: "The Running Mode: 0 by default (featureCounts), 1 (HTSeq-Union),\n2 (HTSeq-Intersection_strict),\
    \ 3 (HTSeq-Intersection_nonempty),\n4 (Union_strict), 5 (Cover_length).\nPlease\
    \ refer to the manual or use '-Z' to check the details of\neach mode."
  type: long
  inputBinding:
    prefix: -z
- id: in_specify_feature_type
  doc: "Specify the feature type. Only rows which have the matched\nfeature type in\
    \ the provided GTF annotation file will be included\nfor read counting. 'exon'\
    \ by default.\nProviding a list of feature types (e.g., -t 'exon;intron;mito')\n\
    will automatically enter hierarchical_assign mode. If the user\nwants to assign\
    \ independently for each feature type, please\nspecify '--assignIndependently'.\
    \ Use -Z to check the details."
  type: File
  inputBinding:
    prefix: -t
- id: in_specify_geneidentifier_attribute
  doc: "Specify the gene_identifier attribute, which is normally 'gene_id'\nor 'gene_name'.\
    \ 'gene_id' by default."
  type: string
  inputBinding:
    prefix: -g
- id: in_input_file_pairedend
  doc: "If the input file is paired-end data but not sorted by read name,\nthis option\
    \ MUST be specified."
  type: boolean
  inputBinding:
    prefix: -S
- id: in_indicate_strandspecific_read
  doc: "Indicate if strand-specific read counting should be performed.\nIt has three\
    \ possible values:  0 (unstranded), 1 (stranded) and\n2 (reversely stranded).\
    \ 0 by default."
  type: long
  inputBinding:
    prefix: -s
- id: in_minimum_mapping_quality
  doc: "The minimum mapping quality score a read must satisfy in order\nto be counted.\
    \ For paired-end reads, at least one end should\nsatisfy this criteria. 0 by default."
  type: long
  inputBinding:
    prefix: -Q
- id: in_output_gene_length
  doc: "Output the gene length. This length is feature_type specific,\nwhich means\
    \ the length in an exon_count file will be the total\nexon length of each gene,\
    \ the length in an intron_count file will\nbe the total intron length, etc."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_output_read_details
  doc: "Output read assignment details for each read/read pairs. The\ndetails will\
    \ be saved to a tab-delimited file that contains five\ncolumns including read\
    \ name, status(assigned or the reason if not\nassigned), feature type and assigned\
    \ gene name."
  type: File
  inputBinding:
    prefix: -R
- id: in_number_used_defaultnote
  doc: "Number of threads used for read assignment. 1 by default.\nNote that when\
    \ running, VERSE will initiate one main thread and\nat least one helper thread\
    \ for read assignment. This option\nspecifies the number of helper threads."
  type: long
  inputBinding:
    prefix: -T
- id: in_single_end
  doc: "If specified, VERSE will assume the input is\nsingle-end data, and assign\
    \ every reads individually. If this is\nnot specified(default), the input will\
    \ be treated as paired-end\ndata. The 'missing mate' count will show how many\
    \ reads are not\nin pairs. VERSE can correctly assign single-end data in paired-\n\
    end mode, but it will take longer and the reads will all be\ncounted as missing\
    \ mates. So it is recommended to specify this\nif the user knows it is single-end."
  type: boolean
  inputBinding:
    prefix: --singleEnd
- id: in_assign_independently
  doc: "If specified, VERSE will assign reads to listed\nfeature types independently.\
    \ This has the same effect as running\nVERSE separately for each feature type,\
    \ except that it only\nrequires one run, thus is more efficient."
  type: boolean
  inputBinding:
    prefix: --assignIndependently
- id: in_read_extension_five
  doc: "Reads are extended upstream by <int> bases from\ntheir 5' end."
  type: long
  inputBinding:
    prefix: --readExtension5
- id: in_read_extension_three
  doc: "Reads are extended upstream by <int> bases from\ntheir 3' end."
  type: long
  inputBinding:
    prefix: --readExtension3
- id: in_min_read_overlap
  doc: "Specify the minimum number of overlapped bases\nrequired to assign a read\
    \ to a feature. 1 by default."
  type: long
  inputBinding:
    prefix: --minReadOverlap
- id: in_max_read_non_overlap
  doc: "Specify the maximum number of non-overlapped bases\na read can have. A read\
    \ is considered no_feature if its number of\nnon-overlapped bases exceeds this\
    \ threshold. This option is not\nuseful in strict mode since it requires the assigned\
    \ feature to\noverlap every base of the read."
  type: long
  inputBinding:
    prefix: --maxReadNonoverlap
- id: in_count_split_alignments_only
  doc: "If specified, only split alignments (CIGAR\nstrings containing letter `N')\
    \ will be counted. All the other\nalignments will be ignored. An example of split\
    \ alignments is\nthe exon-spanning reads in RNA-seq data."
  type: boolean
  inputBinding:
    prefix: --countSplitAlignmentsOnly
- id: in_read_two_pos
  doc: "<5:3>            The read is reduced to its 5' most base or 3'\nmost base.\
    \ Read summarization is then performed based on the\nsingle base which the read\
    \ is reduced to."
  type: boolean
  inputBinding:
    prefix: --read2pos
- id: in_ignored_up
  doc: "If specified, reads that were marked as\nduplicates will be ignored. Bit Ox400\
    \ in FLAG field of SAM/BAM\nfile is used for identifying duplicate reads. In paired\
    \ end\ndata, the entire read pair will be ignored if at least one end\nis found\
    \ to be a duplicate read."
  type: boolean
  inputBinding:
    prefix: --ignoreDup
- id: in_mind_if_ambiguous
  doc: "This option can only be used in VERSE-cover_length\nmode. When the read or\
    \ the read pair hits more than one genes,\nthe number of bases overlapped by each\
    \ gene will be calculated.\nIf the covered_length difference between the most\
    \ covered gene\nand the second most covered gene is smaller than this specified\n\
    value, the read will be set ambiguous. 1 base difference by default."
  type: long
  inputBinding:
    prefix: --minDifAmbiguous
- id: in_non_empty_modified
  doc: "This option can only be used in intersection_\nnonempty mode. In cases where\
    \ HTSeq would assign multi-hit reads\nto no_feature, VERSE will assign those to\
    \ ambiguous."
  type: boolean
  inputBinding:
    prefix: --nonemptyModified
- id: in_multithread_decompress
  doc: "BAM files generated with SAMTools or STAR after\nyear 2013 has a slight format\
    \ change which allows multithreaded\ndecompression. BAM processing will be faster\
    \ if this option is\nspecifed and multiple core is used."
  type: boolean
  inputBinding:
    prefix: --multithreadDecompress
- id: in_specified_template_length
  doc: "If specified, template length (TLEN in SAM specification) will be\nchecked\
    \ when assigning read pairs (templates) to genes. This option\nis only applicable\
    \ in paired-end mode. The distance thresholds\nshould be specified using -d and\
    \ -D options."
  type: boolean
  inputBinding:
    prefix: -P
- id: in_minimum_templateread_pair
  doc: Minimum template(read pair) length, 50 by default.
  type: long
  inputBinding:
    prefix: -d
- id: in_maximum_templateread_pair
  doc: Maximum template(read pair) length, 600 by default.
  type: long
  inputBinding:
    prefix: -D
- id: in_specified_only_read
  doc: "If specified, only read pairs that have both ends successfully\naligned will\
    \ be considered for summarization. This option is only\napplicable for paired-end\
    \ reads."
  type: boolean
  inputBinding:
    prefix: -B
- id: in_specified_chimeric_read
  doc: "If specified, the chimeric read pairs (those that have their two\nends aligned\
    \ to different chromosomes) will NOT be included for\nsummarization. This option\
    \ is only applicable for paired-end data."
  type: boolean
  inputBinding:
    prefix: -C
- id: in_output_version_program
  doc: Output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_show_details_running
  doc: Show details about the running mode or scheme.
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_input_file
  doc: "Give the name of input read file that contains the read mapping\nresults.\
    \ Format of input file is automatically determined (SAM/BAM)\nIf it is paired-end\
    \ data, the file MUST be name-sorted, otherwise\nthe user MUST specify -S, or\
    \ use samtools to sort it by name."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_give_general_name
  doc: "Give the general name of the output file, e.g., 'Sample_A'.\nThe summary file\
    \ will be named 'Sample_A.summary.txt.'\nThe file containing gene counts will\
    \ be named 'Sample_A.exon.txt',\n'Sample_A.intron.txt', etc."
  type: File
  outputBinding:
    glob: $(inputs.in_give_general_name)
- id: out_output_read_details
  doc: "Output read assignment details for each read/read pairs. The\ndetails will\
    \ be saved to a tab-delimited file that contains five\ncolumns including read\
    \ name, status(assigned or the reason if not\nassigned), feature type and assigned\
    \ gene name."
  type: File
  outputBinding:
    glob: $(inputs.in_output_read_details)
cwlVersion: v1.1
baseCommand:
- verse
