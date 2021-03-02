class: CommandLineTool
id: stringMLST.py.cwl
inputs:
- id: in_build_db
  doc: Identifier for build db module
  type: boolean?
  inputBinding:
    prefix: --buildDB
- id: in_config
  doc: "= <configuration file>\nConfig file in the format described above.\nAll the\
    \ files follow the structure followed by pubmlst. Refer extended document for\
    \ details."
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_kmer_lengthkmer_size
  doc: "= <kmer length>\nKmer size for which the db has to be formed(Default k = 35).\
    \ Note the tool works best with kmer length in between 35 and 66\nfor read lengths\
    \ of 55 to 150 bp. Kmer size can be increased accordingly. It is advised to keep\
    \ lower kmer sizes\nif the quality of reads is not very good."
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_prefix
  doc: "= <prefix>\nPrefix for db and log files to be created(Default = kmer). Also\
    \ you can specify folder where you want the dbb to be created."
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_file_location_write
  doc: File location to write build log
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_predict
  doc: Identifier for predict module
  type: boolean?
  inputBinding:
    prefix: --predict
- id: in_fast_q_one
  doc: "= <fastq1_filename>\nPath to first fastq file for paired end sample and path\
    \ to the fastq file for single end file.\nShould have extension fastq or fq."
  type: boolean?
  inputBinding:
    prefix: --fastq1
- id: in_fast_q_two
  doc: "= <fastq2_filename>\nPath to second fastq file for paired end sample.\nShould\
    \ have extension fastq or fq."
  type: boolean?
  inputBinding:
    prefix: --fastq2
- id: in_directory
  doc: "= <directory>\nBATCH MODE : Location of all the samples for batch mode."
  type: boolean?
  inputBinding:
    prefix: --directory
- id: in_coverage
  doc: "Calculate sequence coverage for each allele. Turns on read generation (-r)\
    \ and turns off fuzzy (-z 1)\nRequires bwa, bamtools and samtools be in your path"
  type: boolean?
  inputBinding:
    prefix: --coverage
- id: in_list
  doc: "= <list_file>\nLIST MODE : Location of list file and flag for list mode.\n\
    list file should have full file paths for all the samples/files.\nEach sample\
    \ takes one line. For paired end samples the 2 files should be tab separated on\
    \ single line."
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_output
  doc: "= <output_filename>\nPrints the output to a file instead of stdout."
  type: File?
  inputBinding:
    prefix: --output
- id: in_paired
  doc: "Flag for specifying paired end files. Default option so would work the same\
    \ if you do not specify for all modes.\nFor batch mode the paired end samples\
    \ should be differentiated by 1/2.fastq or 1/2.fq"
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_separate_reads_file
  doc: A separate reads file is created which has all the reads covering all the locus.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_single
  doc: Flag for specifying single end files.
  type: boolean?
  inputBinding:
    prefix: --single
- id: in_time_analysis_also
  doc: Time for each analysis will also be reported.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_prints_version_software
  doc: Prints the version of the software.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_overwrite
  doc: "By default stringMLST appends the results to the output_filename if same name\
    \ is used.\nThis argument overwrites the previously specified output file."
  type: File?
  inputBinding:
    prefix: --overwrite
- id: in_fuzzy
  doc: "= <fuzzy threshold int>\nThreshold for reporting a fuzzy match (Default=300).\
    \ For higher coverage reads this threshold should be set higher to avoid\nindicating\
    \ fuzzy match when exact match was more likely. For lower coverage reads, threshold\
    \ of <100 is recommended"
  type: boolean?
  inputBinding:
    prefix: --fuzzy
- id: in_get_mlst
  doc: Identifier for getMLST module
  type: boolean?
  inputBinding:
    prefix: --getMLST
- id: in_species
  doc: "= <species name>\nSpecies name from the pubMLST schemes (use --schemes to\
    \ get list of available schemes)\n\"all\" will download and build all"
  type: boolean?
  inputBinding:
    prefix: --species
- id: in_schemes
  doc: Display the list of available schemes
  type: boolean?
  inputBinding:
    prefix: --schemes
- id: in_locus_one
  doc: locusFile1
  type: long
  inputBinding:
    position: 0
- id: in_locus_two
  doc: locusFile2
  type: long
  inputBinding:
    position: 1
- id: in_profile
  doc: profileFile
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "= <output_filename>\nPrints the output to a file instead of stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_overwrite
  doc: "By default stringMLST appends the results to the output_filename if same name\
    \ is used.\nThis argument overwrites the previously specified output file."
  type: File?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- stringMLST.py
