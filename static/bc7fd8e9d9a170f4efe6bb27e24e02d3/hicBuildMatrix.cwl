class: CommandLineTool
id: hicBuildMatrix.cwl
inputs:
- id: sam_files
  doc: 'sam files two sam files, -s two sam files two sam files The two PE alignment
    sam files to process (default: None)'
  type: string
  inputBinding:
    prefix: --samFiles
- id: out_filename
  doc: 'Output file name for the Hi-C matrix. (default: None)'
  type: File
  inputBinding:
    prefix: --outFileName
- id: qc_folder
  doc: 'Path of folder to save the quality control data for the matrix. The log files
    produced this way can be loaded into `hicQC` in order to compare the quality of
    multiple Hi-C libraries. (default: None)'
  type: Directory
  inputBinding:
    prefix: --QCfolder
- id: min_distance
  doc: 'Minimum distance between restriction sites. Restriction sites that are closer
    than this distance are merged into one. This option only applies if --restrictionCutFile
    is given. (default: 300)'
  type: long
  inputBinding:
    prefix: --minDistance
- id: max_distance
  doc: 'This parameter is now obsolete. Use --maxLibraryInsertSize instead (default:
    None)'
  type: long
  inputBinding:
    prefix: --maxDistance
- id: max_library_insert_size
  doc: 'The maximum library insert size defines different cut offs based on the maximum
    expected library size. *This is not the average fragment size* but the higher
    end of the the fragment size distribution (obtained using for example a Fragment
    Analyzer or a Bioanalyzer) which usually is between 800 to 1500 bp. If this value
    is not known use the default of 1000. The insert value is used to decide if two
    mates belong to the same fragment (by checking if they are within this max insert
    size) and to decide if a mate is too far away from the nearest restriction site.
    (default: 1000)'
  type: long
  inputBinding:
    prefix: --maxLibraryInsertSize
- id: restriction_sequence
  doc: 'Sequence of the restriction site. (default: None)'
  type: string
  inputBinding:
    prefix: --restrictionSequence
- id: genome_assembly
  doc: 'The genome the reads were mapped to. Used for metadata of cool file. (default:
    None)'
  type: string
  inputBinding:
    prefix: --genomeAssembly
- id: dangling_sequence
  doc: "Sequence left by the restriction enzyme after cutting. Each restriction enzyme\
    \ recognizes a different DNA sequence and, after cutting, they leave behind a\
    \ specific \"sticky\" end or dangling end sequence. For example, for HindIII the\
    \ restriction site is AAGCTT and the dangling end is AGCT. For DpnII, the restriction\
    \ site and dangling end sequence are the same: GATC. This information is easily\
    \ found on the description of the restriction enzyme. The dangling sequence is\
    \ used to classify and report reads whose 5' end starts with such sequence as\
    \ dangling-end reads. A significant portion of dangling-end reads in a sample\
    \ are indicative of a problem with the re-ligation step of the protocol. (default:\
    \ None)"
  type: string
  inputBinding:
    prefix: --danglingSequence
- id: region
  doc: ':START-END, -r CHR:START-END Region of the genome to limit the operation to.
    The format is chr:start-end. It is also possible to just specify a chromosome,
    for example --region chr10 (default: None)'
  type: string
  inputBinding:
    prefix: --region
- id: keep_self_circles
  doc: 'If set, outward facing reads without any restriction fragment (self circles)
    are kept. They will be counted and shown in the QC plots. (default: False)'
  type: boolean
  inputBinding:
    prefix: --keepSelfCircles
- id: min_mapping_quality
  doc: 'minimum mapping quality for reads to be accepted. Because the restriction
    enzyme site could be located on top of the read, this may reduce the reported
    quality of the read. Thus, this parameter may be adjusted if too many low quality
    (but otherwise perfectly valid Hi-C reads) are found. A good strategy is to make
    a test run (using the --doTestRun), then checking the results to see if too many
    low quality reads are present and then using the bam file generated to check if
    those low quality reads are caused by the read not being mapped entirely. (default:
    15)'
  type: long
  inputBinding:
    prefix: --minMappingQuality
- id: threads
  doc: "Number of threads. Using the python multiprocessing module. One master process\
    \ which is used to read the input file into the buffer and one process which is\
    \ merging the output bam files of the processes into one output bam file. All\
    \ other threads do the actual computation. Minimum value for the '--thread' parameter\
    \ is 2. The usage of 8 threads is optimal if you have an HDD. A higher number\
    \ of threads is only useful if you have a fast SSD. Have in mind that the performance\
    \ of hicBuildMatrix is influenced by the number of threads, the speed of your\
    \ hard drive and the inputBufferSize. To clarify: the performance with a higher\
    \ thread number is not negative influenced but not positive too. With a slow HDD\
    \ and a high number of threads many threads will do nothing most of the time.\
    \ (default: 4)"
  type: string
  inputBinding:
    prefix: --threads
- id: input_buffer_size
  doc: 'Size of the input buffer of each thread. 400,000 read pairs per input file
    per thread is the default value. Reduce this value to decrease memory usage. (default:
    400000)'
  type: string
  inputBinding:
    prefix: --inputBufferSize
- id: do_test_run
  doc: 'A test run is useful to test the quality of a Hi-C experiment quickly. It
    works by testing only 1,000,000 reads. This option is useful to get an idea of
    quality control values like inter-chromosomal interactions, duplication rates
    etc. (default: False)'
  type: boolean
  inputBinding:
    prefix: --doTestRun
- id: do_test_run_lines
  doc: 'Number of lines to consider for the qc test run. (default: 1000000)'
  type: string
  inputBinding:
    prefix: --doTestRunLines
- id: skip_duplication_check
  doc: 'Identification of duplicated read pairs is memory consuming. Thus, in case
    of memory errors this check can be skipped. However, consider running a `--doTestRun`
    first to get an estimation of the duplicated reads. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skipDuplicationCheck
outputs: []
cwlVersion: v1.1
baseCommand:
- hicBuildMatrix
