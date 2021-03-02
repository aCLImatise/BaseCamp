class: CommandLineTool
id: bismark_methylation_extractor.cwl
inputs:
- id: in_comprehensive
  doc: specified, see below). The output files can be imported into a genome
  type: string?
  inputBinding:
    prefix: --comprehensive
- id: in_single_end
  doc: "Input file(s) are Bismark result file(s) generated from single-end\nread data.\
    \ If neither -s nor -p is set the type of experiment will\nbe determined automatically."
  type: boolean?
  inputBinding:
    prefix: --single-end
- id: in_paired_end
  doc: "Input file(s) are Bismark result file(s) generated from paired-end\nread data.\
    \ If neither -s nor -p is set the type of experiment will\nbe determined automatically."
  type: boolean?
  inputBinding:
    prefix: --paired-end
- id: in_no_overlap
  doc: "For paired-end reads it is theoretically possible that read_1 and\nread_2\
    \ overlap. This option avoids scoring overlapping methylation\ncalls twice (only\
    \ methylation calls of read 1 are used for in the process\nsince read 1 has historically\
    \ higher quality basecalls than read 2).\nWhilst this option removes a bias towards\
    \ more methylation calls\nin the center of sequenced fragments it may de facto\
    \ remove a sizable\nproportion of the data. This option is on by default for paired-end\
    \ data\nbut can be disabled using --include_overlap. Default: ON."
  type: boolean?
  inputBinding:
    prefix: --no_overlap
- id: in_include_overlap
  doc: "For paired-end data all methylation calls will be extracted irrespective of\n\
    of whether they overlap or not. Default: OFF."
  type: boolean?
  inputBinding:
    prefix: --include_overlap
- id: in_ignore
  doc: "Ignore the first <int> bp from the 5' end of Read 1 (or single-end alignment\n\
    files) when processing the methylation call string. This can remove e.g. a\nrestriction\
    \ enzyme site at the start of each read or any other source of\nbias (such as\
    \ PBAT-Seq data)."
  type: long?
  inputBinding:
    prefix: --ignore
- id: in_ignore_r_two
  doc: "Ignore the first <int> bp from the 5' end of Read 2 of paired-end sequencing\n\
    results only. Since the first couple of bases in Read 2 of BS-Seq experiments\n\
    show a severe bias towards non-methylation as a result of end-repairing\nsonicated\
    \ fragments with unmethylated cytosines (see M-bias plot), it is\nrecommended\
    \ that the first couple of bp of Read 2 are removed before\nstarting downstream\
    \ analysis. Please see the section on M-bias plots in the\nBismark User Guide\
    \ for more details."
  type: long?
  inputBinding:
    prefix: --ignore_r2
- id: in_ignore_three_prime
  doc: "Ignore the last <int> bp from the 3' end of Read 1 (or single-end alignment\n\
    files) when processing the methylation call string. This can remove unwanted\n\
    biases from the end of reads."
  type: long?
  inputBinding:
    prefix: --ignore_3prime
- id: in_ignore_three_prime_r_two
  doc: "Ignore the last <int> bp from the 3' end of Read 2 of paired-end sequencing\n\
    results only. This can remove unwanted biases from the end of reads."
  type: long?
  inputBinding:
    prefix: --ignore_3prime_r2
- id: in_merge_non_cpg
  doc: "This will produce two output files (in --comprehensive mode) or eight\nstrand-specific\
    \ output files (default) for Cs in\n- CpG context\n- non-CpG context"
  type: boolean?
  inputBinding:
    prefix: --merge_non_CpG
- id: in_no_header
  doc: "Suppresses the Bismark version header line in all output files for more convenient\n\
    batch processing."
  type: boolean?
  inputBinding:
    prefix: --no_header
- id: in_output
  doc: "Allows specification of a different output directory (absolute or relative\n\
    path). If not specified explicitly, the output will be written to the current\
    \ directory."
  type: File?
  inputBinding:
    prefix: --output
- id: in_sam_tools_path
  doc: "The path to your Samtools installation, e.g. /home/user/samtools/. Does not\
    \ need to be specified\nexplicitly if Samtools is in the PATH already."
  type: boolean?
  inputBinding:
    prefix: --samtools_path
- id: in_gzip
  doc: "The methylation extractor files (CpG_OT_..., CpG_OB_... etc) will be written\
    \ out in\na GZIP compressed form to save disk space. This option is also passed\
    \ on to the genome-wide\ncytosine report. BedGraph and coverage files will be\
    \ written out as .gz by default."
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_m_bias_only
  doc: "The methylation extractor will read the entire file but only output the M-bias\
    \ table and plots as\nwell as a report (optional) and then quit. Default: OFF."
  type: File?
  inputBinding:
    prefix: --mbias_only
- id: in_m_bias_off
  doc: "The methylation extractor will process the entire file as usual but doesn't\
    \ write out any M-bias report.\nOnly recommended for users who deliberately want\
    \ to keep an earlier version of the M-bias report.\nDefault: OFF."
  type: File?
  inputBinding:
    prefix: --mbias_off
- id: in_parallel
  doc: "May also be --multicore <int>. Sets the number of cores to be used for the\
    \ methylation extraction process.\nIf system resources are plentiful this is a\
    \ viable option to speed up the extraction process (we observed a\nnear linear\
    \ speed increase for up to 10 cores used). Please note that a typical process\
    \ of extracting a BAM file\nand writing out '.gz' output streams will in fact\
    \ use ~3 cores per value of --parallel <int>\nspecified (1 for the methylation\
    \ extractor itself, 1 for a Samtools stream, 1 for GZIP stream), so\n--parallel\
    \ 10 is likely to use around 30 cores of system resources. This option has no\
    \ bearing\non the bismark2bedGraph or genome-wide cytosine report processes."
  type: long?
  inputBinding:
    prefix: --parallel
- id: in_yacht
  doc: "This option (Yet Another Context Hunting Tool) writes out additional information\
    \ about the read a methylation\ncall belongs to, and its output is meant to be\
    \ fed into the NOMe_filtering script. This option writes out\na single 'any_C_context'\
    \ file that contains all methylation calls for a read consecutively. Its intended\
    \ use\nis single-cell NOMe-Seq data, and thus this option works only in single-end\
    \ mode (paired-end reads often suffer\nfrom chimaera problems...)\n--yacht will\
    \ add three additional columns to the standard methylation call files:\n<read\
    \ start>  <read end>  <read orientation>\nFor forward reads (+ orientation) the\
    \ start position is the left-most position wheras for reverse reads\n(- orientation)\
    \ it is the rightmost position."
  type: File?
  inputBinding:
    prefix: --yacht
- id: in_bed_graph
  doc: "After finishing the methylation extraction, the methylation output is written\
    \ into a\nsorted bedGraph file that reports the position of a given cytosine and\
    \ its methylation\nstate (in %, see details below). The methylation extractor\
    \ output is temporarily split up into\ntemporary files, one per chromosome (written\
    \ into the current directory or folder\nspecified with -o/--output); these temp\
    \ files are then used for sorting and deleted\nafterwards. By default, only cytosines\
    \ in CpG context will be sorted. The option\n'--CX_context' may be used to report\
    \ all cytosines irrespective of sequence context\n(this will take MUCH longer!).\
    \ The default folder for temporary files during the sorting\nprocess is the output\
    \ directory. The bedGraph conversion step is performed by the external\nmodule\
    \ 'bismark2bedGraph'; this script needs to reside in the same folder as the\n\
    bismark_methylation_extractor itself."
  type: File?
  inputBinding:
    prefix: --bedGraph
- id: in_zero_based
  doc: "Write out an additional coverage file (ending in .zero.cov) that uses 0-based\
    \ genomic start\nand 1-based genomic end coordinates (zero-based, half-open),\
    \ like used in the bedGraph file,\ninstead of using 1-based coordinates throughout.\
    \ Default: OFF."
  type: File?
  inputBinding:
    prefix: --zero_based
- id: in_cut_off
  doc: "[threshold]     The minimum number of times any methylation state (methylated\
    \ or unmethylated) has to be seen\nfor a nucleotide before its methylation percentage\
    \ is reported. Default: 1."
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_remove_spaces
  doc: Replaces whitespaces in the sequence ID field with underscores to allow sorting.
  type: boolean?
  inputBinding:
    prefix: --remove_spaces
- id: in_cx_context
  doc: "The sorted bedGraph output file contains information on every single cytosine\
    \ that was covered\nin the experiment irrespective of its sequence context. This\
    \ applies to both forward and\nreverse strands. Please be aware that this option\
    \ may generate large temporary and output files\nand may take a long time to sort\
    \ (up to many hours). Default: OFF.\n(i.e. Default = CpG context only)."
  type: File?
  inputBinding:
    prefix: --CX_context
- id: in_buffer_size
  doc: "This allows you to specify the main memory sort buffer when sorting the methylation\
    \ information.\nEither specify a percentage of physical memory by appending %\
    \ (e.g. --buffer_size 50%) or\na multiple of 1024 bytes, e.g. 'K' multiplies by\
    \ 1024, 'M' by 1048576 and so on for 'T' etc.\n(e.g. --buffer_size 20G). For more\
    \ information on sort type 'info sort' on a command line.\nDefaults to 2G."
  type: long?
  inputBinding:
    prefix: --buffer_size
- id: in_scaffolds
  doc: "Users working with unfinished genomes sporting tens or even hundreds of thousands\
    \ of\nscaffolds/contigs/chromosomes frequently encountered errors with pre-sorting\
    \ reads to\nindividual chromosome files. These errors were caused by the operating\
    \ system's limit\nof the number of filehandle that can be written to at any one\
    \ time (typically 1024; to\nfind out this limit on Linux, type: ulimit -a).\n\
    To bypass the limitation of open filehandles, the option --scaffolds does not\
    \ pre-sort\nmethylation calls into individual chromosome files. Instead, all input\
    \ files are\ntemporarily merged into a single file (unless there is only a single\
    \ file), and this\nfile will then be sorted by both chromosome AND position using\
    \ the Unix sort command.\nPlease be aware that this option might take a looooong\
    \ time to complete, depending on\nthe size of the input files, and the memory\
    \ you allocate to this process (see --buffer_size).\nNevertheless, it seems to\
    \ be working."
  type: boolean?
  inputBinding:
    prefix: --scaffolds
- id: in_ample_memory
  doc: "Using this option will not sort chromosomal positions using the UNIX 'sort'\
    \ command, but will\ninstead use two arrays to sort methylated and unmethylated\
    \ calls. This may result in a faster\nsorting process of very large files, but\
    \ this comes at the cost of a larger memory footprint\n(two arrays of the length\
    \ of the largest human chromosome 1 (~250M bp) consume around 16GB\nof RAM). Due\
    \ to overheads in creating and looping through these arrays it seems that it will\n\
    actually be *slower* for small files (few million alignments), and we are currently\
    \ testing at\nwhich point it is advisable to use this option. Note that --ample_memory\
    \ is not compatible\nwith options '--scaffolds/--gazillion' (as it requires pre-sorted\
    \ files to begin with)."
  type: boolean?
  inputBinding:
    prefix: --ample_memory
- id: in_cytosine_report
  doc: "After the conversion to bedGraph has completed, the option '--cytosine_report'\
    \ produces a\ngenome-wide methylation report for all cytosines in the genome.\
    \ By default, the output uses 1-based\nchromosome coordinates (zero-based start\
    \ coords are optional) and reports CpG context only (all\ncytosine context is\
    \ optional). The output considers all Cs on both forward and reverse strands and\n\
    reports their position, strand, trinucleotide content and methylation state (counts\
    \ are 0 if not\ncovered). The cytosine report conversion step is performed by\
    \ the external module\n'coverage2cytosine'; this script needs to reside in the\
    \ same folder as the bismark_methylation_extractor\nitself."
  type: Directory?
  inputBinding:
    prefix: --cytosine_report
- id: in_genome_folder
  doc: "Enter the genome folder you wish to use to extract sequences from (full path\
    \ only). Accepted\nformats are FastA files ending with '.fa' or '.fasta'. Specifying\
    \ a genome folder path is mandatory."
  type: File?
  inputBinding:
    prefix: --genome_folder
- id: in_split_by_chromosome
  doc: "Writes the output into individual files for each chromosome instead of a single\
    \ output file. Files\nwill be named to include the input filename and the chromosome\
    \ number."
  type: boolean?
  inputBinding:
    prefix: --split_by_chromosome
- id: in_ot
  doc: original top strand
  type: string
  inputBinding:
    position: 0
- id: in_c_tot
  doc: complementary to original top strand
  type: string
  inputBinding:
    position: 1
- id: in_ob
  doc: original bottom strand
  type: string
  inputBinding:
    position: 2
- id: in_cto_b
  doc: complementary to original bottom strand
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Allows specification of a different output directory (absolute or relative\n\
    path). If not specified explicitly, the output will be written to the current\
    \ directory."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_m_bias_only
  doc: "The methylation extractor will read the entire file but only output the M-bias\
    \ table and plots as\nwell as a report (optional) and then quit. Default: OFF."
  type: File?
  outputBinding:
    glob: $(inputs.in_m_bias_only)
- id: out_m_bias_off
  doc: "The methylation extractor will process the entire file as usual but doesn't\
    \ write out any M-bias report.\nOnly recommended for users who deliberately want\
    \ to keep an earlier version of the M-bias report.\nDefault: OFF."
  type: File?
  outputBinding:
    glob: $(inputs.in_m_bias_off)
- id: out_yacht
  doc: "This option (Yet Another Context Hunting Tool) writes out additional information\
    \ about the read a methylation\ncall belongs to, and its output is meant to be\
    \ fed into the NOMe_filtering script. This option writes out\na single 'any_C_context'\
    \ file that contains all methylation calls for a read consecutively. Its intended\
    \ use\nis single-cell NOMe-Seq data, and thus this option works only in single-end\
    \ mode (paired-end reads often suffer\nfrom chimaera problems...)\n--yacht will\
    \ add three additional columns to the standard methylation call files:\n<read\
    \ start>  <read end>  <read orientation>\nFor forward reads (+ orientation) the\
    \ start position is the left-most position wheras for reverse reads\n(- orientation)\
    \ it is the rightmost position."
  type: File?
  outputBinding:
    glob: $(inputs.in_yacht)
- id: out_bed_graph
  doc: "After finishing the methylation extraction, the methylation output is written\
    \ into a\nsorted bedGraph file that reports the position of a given cytosine and\
    \ its methylation\nstate (in %, see details below). The methylation extractor\
    \ output is temporarily split up into\ntemporary files, one per chromosome (written\
    \ into the current directory or folder\nspecified with -o/--output); these temp\
    \ files are then used for sorting and deleted\nafterwards. By default, only cytosines\
    \ in CpG context will be sorted. The option\n'--CX_context' may be used to report\
    \ all cytosines irrespective of sequence context\n(this will take MUCH longer!).\
    \ The default folder for temporary files during the sorting\nprocess is the output\
    \ directory. The bedGraph conversion step is performed by the external\nmodule\
    \ 'bismark2bedGraph'; this script needs to reside in the same folder as the\n\
    bismark_methylation_extractor itself."
  type: File?
  outputBinding:
    glob: $(inputs.in_bed_graph)
- id: out_zero_based
  doc: "Write out an additional coverage file (ending in .zero.cov) that uses 0-based\
    \ genomic start\nand 1-based genomic end coordinates (zero-based, half-open),\
    \ like used in the bedGraph file,\ninstead of using 1-based coordinates throughout.\
    \ Default: OFF."
  type: File?
  outputBinding:
    glob: $(inputs.in_zero_based)
- id: out_cx_context
  doc: "The sorted bedGraph output file contains information on every single cytosine\
    \ that was covered\nin the experiment irrespective of its sequence context. This\
    \ applies to both forward and\nreverse strands. Please be aware that this option\
    \ may generate large temporary and output files\nand may take a long time to sort\
    \ (up to many hours). Default: OFF.\n(i.e. Default = CpG context only)."
  type: File?
  outputBinding:
    glob: $(inputs.in_cx_context)
- id: out_cytosine_report
  doc: "After the conversion to bedGraph has completed, the option '--cytosine_report'\
    \ produces a\ngenome-wide methylation report for all cytosines in the genome.\
    \ By default, the output uses 1-based\nchromosome coordinates (zero-based start\
    \ coords are optional) and reports CpG context only (all\ncytosine context is\
    \ optional). The output considers all Cs on both forward and reverse strands and\n\
    reports their position, strand, trinucleotide content and methylation state (counts\
    \ are 0 if not\ncovered). The cytosine report conversion step is performed by\
    \ the external module\n'coverage2cytosine'; this script needs to reside in the\
    \ same folder as the bismark_methylation_extractor\nitself."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_cytosine_report)
hints: []
cwlVersion: v1.1
baseCommand:
- bismark_methylation_extractor
