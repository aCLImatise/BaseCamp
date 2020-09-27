class: CommandLineTool
id: hicBuildMatrix.cwl
inputs:
- id: in_sam_files
  doc: "sam files two sam files, -s two sam files two sam files\nThe two PE alignment\
    \ sam files to process (default:\nNone)"
  type: string
  inputBinding:
    prefix: --samFiles
- id: in_out_filename
  doc: 'Output file name for the Hi-C matrix. (default: None)'
  type: File
  inputBinding:
    prefix: --outFileName
- id: in_qc_folder
  doc: "Path of folder to save the quality control data for\nthe matrix. The log files\
    \ produced this way can be\nloaded into `hicQC` in order to compare the quality\
    \ of\nmultiple Hi-C libraries. (default: None)"
  type: Directory
  inputBinding:
    prefix: --QCfolder
- id: in_restriction_cut_file
  doc: "file [BED file ...], -rs BED file [BED file ...]\nBED file(s) with all restriction\
    \ cut places (output of\n\"findRestSite\" command). Should contain only mappable\n\
    restriction sites. If given, the bins are set to match\nthe restriction fragments\
    \ (i.e. the region between one\nrestriction site and the next). Alternatively,\
    \ a fixed\nbinSize can be defined instead. However, either\nbinSize or restrictionCutFile\
    \ must be defined. To use\nmore than one restriction enzyme, generate for each\n\
    one a restrictionCutFile and list them space\nseperated. (default: None)"
  type: File
  inputBinding:
    prefix: --restrictionCutFile
- id: in_restriction_sequence
  doc: "Sequence of the restriction site, if multiple are\nused, please list them\
    \ space seperated. If a dangling\nsequence is listed at the same time, please\
    \ preserve\nthe same order. (default: None)"
  type: string[]
  inputBinding:
    prefix: --restrictionSequence
- id: in_dangling_sequence
  doc: "Sequence left by the restriction enzyme after cutting,\nif multiple are used,\
    \ please list them space seperated\nand preserve the order. Each restriction enzyme\n\
    recognizes a different DNA sequence and, after\ncutting, they leave behind a specific\
    \ \"sticky\" end or\ndangling end sequence. For example, for HindIII the\nrestriction\
    \ site is AAGCTT and the dangling end is\nAGCT. For DpnII, the restriction site\
    \ and dangling end\nsequence are the same: GATC. This information is\neasily found\
    \ on the description of the restriction\nenzyme. The dangling sequence is used\
    \ to classify and\nreport reads whose 5' end starts with such sequence as\ndangling-end\
    \ reads. A significant portion of dangling-\nend reads in a sample are indicative\
    \ of a problem with\nthe re-ligation step of the protocol. (default: None)"
  type: string[]
  inputBinding:
    prefix: --danglingSequence
- id: in_out_bam
  doc: "file, -b bam file\nOutput bam file to process. Optional parameter. A bam\n\
    file containing all valid Hi-C reads can be created\nusing this option. This bam\
    \ file could be useful to\ninspect the distribution of valid Hi-C reads pairs\
    \ or\nfor other downstream analyses, but is not used by any\nHiCExplorer tool.\
    \ Computation will be significantly\nlonger if this option is set. (default: None)"
  type: File
  inputBinding:
    prefix: --outBam
- id: in_binsize
  doc: "Size in bp for the bins. The bin size depends on the\ndepth of sequencing.\
    \ Use a larger bin size for\nlibraries sequenced with lower depth. Alternatively,\n\
    the location of the restriction sites can be given\n(see --restrictionCutFile).\
    \ However, either binSize or\nrestrictionCutFile must be defined.Optional for\
    \ mcool\nfile format: Define multiple resolutions which are all\na multiple of\
    \ the first value. Example: --binSize\n10000 20000 50000 will create a mcool file\
    \ formate\ncontaining the three defined resolutions. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --binSize
- id: in_min_distance
  doc: "Minimum distance between restriction sites.\nRestriction sites that are closer\
    \ than this distance\nare merged into one. This option only applies if\n--restrictionCutFile\
    \ is given. (default: 300)"
  type: long
  inputBinding:
    prefix: --minDistance
- id: in_max_distance
  doc: "This parameter is now obsolete. Use\n--maxLibraryInsertSize instead (default:\
    \ None)"
  type: long
  inputBinding:
    prefix: --maxDistance
- id: in_max_library_insert_size
  doc: "The maximum library insert size defines different cut\noffs based on the maximum\
    \ expected library size. *This\nis not the average fragment size* but the higher\
    \ end\nof the the fragment size distribution (obtained using\nfor example a Fragment\
    \ Analyzer or a Bioanalyzer)\nwhich usually is between 800 to 1500 bp. If this\
    \ value\nis not known use the default of 1000. The insert value\nis used to decide\
    \ if two mates belong to the same\nfragment (by checking if they are within this\
    \ max\ninsert size) and to decide if a mate is too far away\nfrom the nearest\
    \ restriction site. (default: 1000)"
  type: long
  inputBinding:
    prefix: --maxLibraryInsertSize
- id: in_genome_assembly
  doc: "The genome the reads were mapped to. Used for metadata\nof cool file. (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --genomeAssembly
- id: in_region
  doc: ":START-END, -r CHR:START-END\nRegion of the genome to limit the operation\
    \ to. The\nformat is chr:start-end. It is also possible to just\nspecify a chromosome,\
    \ for example --region chr10\n(default: None)"
  type: long
  inputBinding:
    prefix: --region
- id: in_remove_self_ligation
  doc: "If set, inward facing reads less than 1000 bp apart\nand having a restrictionsite\
    \ in between are removed.\nAlthough this reads do not contribute to any distant\n\
    contact, they are useful to account for bias in the\ndata. (default: True)"
  type: long
  inputBinding:
    prefix: --removeSelfLigation
- id: in_keep_self_circles
  doc: "If set, outward facing reads without any restriction\nfragment (self circles)\
    \ are kept. They will be counted\nand shown in the QC plots. (default: False)"
  type: boolean
  inputBinding:
    prefix: --keepSelfCircles
- id: in_min_mapping_quality
  doc: "minimum mapping quality for reads to be accepted.\nBecause the restriction\
    \ enzyme site could be located\non top of the read, this may reduce the reported\n\
    quality of the read. Thus, this parameter may be\nadjusted if too many low quality\
    \ (but otherwise\nperfectly valid Hi-C reads) are found. A good strategy\nis to\
    \ make a test run (using the --doTestRun), then\nchecking the results to see if\
    \ too many low quality\nreads are present and then using the bam file\ngenerated\
    \ to check if those low quality reads are\ncaused by the read not being mapped\
    \ entirely.\n(default: 15)"
  type: long
  inputBinding:
    prefix: --minMappingQuality
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. One master process\
    \ which is used to read the\ninput file into the buffer and one process which\
    \ is\nmerging the output bam files of the processes into one\noutput bam file.\
    \ All other threads do the actual\ncomputation. Minimum value for the '--thread'\n\
    parameter is 2. The usage of 8 threads is optimal if\nyou have an HDD. A higher\
    \ number of threads is only\nuseful if you have a fast SSD. Have in mind that\
    \ the\nperformance of hicBuildMatrix is influenced by the\nnumber of threads,\
    \ the speed of your hard drive and\nthe inputBufferSize. To clarify: the performance\
    \ with\na higher thread number is not negative influenced but\nnot positive too.\
    \ With a slow HDD and a high number of\nthreads many threads will do nothing most\
    \ of the time.\n(default: 4)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_input_buffer_size
  doc: "Size of the input buffer of each thread. 400,000 read\npairs per input file\
    \ per thread is the default value.\nReduce this value to decrease memory usage.\
    \ (default:\n400000)"
  type: long
  inputBinding:
    prefix: --inputBufferSize
- id: in_do_test_run
  doc: "A test run is useful to test the quality of a Hi-C\nexperiment quickly. It\
    \ works by testing only 1,000,000\nreads. This option is useful to get an idea\
    \ of quality\ncontrol values like inter-chromosomal interactions,\nduplication\
    \ rates etc. (default: False)"
  type: boolean
  inputBinding:
    prefix: --doTestRun
- id: in_do_test_run_lines
  doc: "Number of lines to consider for the qc test run.\n(default: 1000000)"
  type: long
  inputBinding:
    prefix: --doTestRunLines
- id: in_skip_duplication_check
  doc: "Identification of duplicated read pairs is memory\nconsuming. Thus, in case\
    \ of memory errors this check\ncan be skipped. However, consider running a\n`--doTestRun`\
    \ first to get an estimation of the\nduplicated reads. (default: False)"
  type: boolean
  inputBinding:
    prefix: --skipDuplicationCheck
- id: in_chromosome_sizes
  doc: "file, -cs txt file\nFile with the chromosome sizes for your genome. A tab-\n\
    delimited two column layout \"chr_name size\" is\nexpectedUsually the sizes can\
    \ be determined from the\nSAM/BAM input files, however, for cHi-C or scHi-C it\n\
    can be that at the start or end no data is present.\nPlease consider that this\
    \ option causes that only\nreads are considered which are on the listed\nchromosomes.Use\
    \ this option to guarantee fixed sizes.\nAn example file is available via UCSC:\
    \ http://hgdownlo\nad.soe.ucsc.edu/goldenPath/dm3/bigZips/dm3.chrom.sizes\n(default:\
    \ None)"
  type: long
  inputBinding:
    prefix: --chromosomeSizes
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_two
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: 'Output file name for the Hi-C matrix. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
- id: out_restriction_cut_file
  doc: "file [BED file ...], -rs BED file [BED file ...]\nBED file(s) with all restriction\
    \ cut places (output of\n\"findRestSite\" command). Should contain only mappable\n\
    restriction sites. If given, the bins are set to match\nthe restriction fragments\
    \ (i.e. the region between one\nrestriction site and the next). Alternatively,\
    \ a fixed\nbinSize can be defined instead. However, either\nbinSize or restrictionCutFile\
    \ must be defined. To use\nmore than one restriction enzyme, generate for each\n\
    one a restrictionCutFile and list them space\nseperated. (default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_restriction_cut_file)
- id: out_out_bam
  doc: "file, -b bam file\nOutput bam file to process. Optional parameter. A bam\n\
    file containing all valid Hi-C reads can be created\nusing this option. This bam\
    \ file could be useful to\ninspect the distribution of valid Hi-C reads pairs\
    \ or\nfor other downstream analyses, but is not used by any\nHiCExplorer tool.\
    \ Computation will be significantly\nlonger if this option is set. (default: None)"
  type: File
  outputBinding:
    glob: $(inputs.in_out_bam)
cwlVersion: v1.1
baseCommand:
- hicBuildMatrix
