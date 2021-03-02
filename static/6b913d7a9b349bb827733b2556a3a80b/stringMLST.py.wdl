version 1.0

task StringMLSTpy {
  input {
    Boolean? build_db
    Boolean? config
    Boolean? kmer_lengthkmer_size
    Boolean? prefix
    Boolean? file_location_write
    Boolean? predict
    Boolean? fast_q_one
    Boolean? fast_q_two
    Boolean? directory
    Boolean? coverage
    Boolean? list
    File? outputfilenameprints_output_stdout
    Boolean? paired
    Boolean? separate_reads_file
    Boolean? single
    Boolean? time_analysis_also
    Boolean? prints_version_software
    File? overwrite
    Boolean? fuzzy
    Boolean? get_mlst
    Boolean? species
    Boolean? schemes
    Int locus_one
    Int locus_two
    String profile
  }
  command <<<
    stringMLST_py \
      ~{locus_one} \
      ~{locus_two} \
      ~{profile} \
      ~{if (build_db) then "--buildDB" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (kmer_lengthkmer_size) then "-k" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (file_location_write) then "-a" else ""} \
      ~{if (predict) then "--predict" else ""} \
      ~{if (fast_q_one) then "--fastq1" else ""} \
      ~{if (fast_q_two) then "--fastq2" else ""} \
      ~{if (directory) then "--directory" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (outputfilenameprints_output_stdout) then "--output" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (separate_reads_file) then "-r" else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (time_analysis_also) then "-t" else ""} \
      ~{if (prints_version_software) then "-v" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (fuzzy) then "--fuzzy" else ""} \
      ~{if (get_mlst) then "--getMLST" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (schemes) then "--schemes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/stringmlst:0.6.3--py_0"
  }
  parameter_meta {
    build_db: "Identifier for build db module"
    config: "= <configuration file>\\nConfig file in the format described above.\\nAll the files follow the structure followed by pubmlst. Refer extended document for details."
    kmer_lengthkmer_size: "= <kmer length>\\nKmer size for which the db has to be formed(Default k = 35). Note the tool works best with kmer length in between 35 and 66\\nfor read lengths of 55 to 150 bp. Kmer size can be increased accordingly. It is advised to keep lower kmer sizes\\nif the quality of reads is not very good."
    prefix: "= <prefix>\\nPrefix for db and log files to be created(Default = kmer). Also you can specify folder where you want the dbb to be created."
    file_location_write: "File location to write build log"
    predict: "Identifier for predict module"
    fast_q_one: "= <fastq1_filename>\\nPath to first fastq file for paired end sample and path to the fastq file for single end file.\\nShould have extension fastq or fq."
    fast_q_two: "= <fastq2_filename>\\nPath to second fastq file for paired end sample.\\nShould have extension fastq or fq."
    directory: "= <directory>\\nBATCH MODE : Location of all the samples for batch mode."
    coverage: "Calculate sequence coverage for each allele. Turns on read generation (-r) and turns off fuzzy (-z 1)\\nRequires bwa, bamtools and samtools be in your path"
    list: "= <list_file>\\nLIST MODE : Location of list file and flag for list mode.\\nlist file should have full file paths for all the samples/files.\\nEach sample takes one line. For paired end samples the 2 files should be tab separated on single line."
    outputfilenameprints_output_stdout: "= <output_filename>\\nPrints the output to a file instead of stdout."
    paired: "Flag for specifying paired end files. Default option so would work the same if you do not specify for all modes.\\nFor batch mode the paired end samples should be differentiated by 1/2.fastq or 1/2.fq"
    separate_reads_file: "A separate reads file is created which has all the reads covering all the locus."
    single: "Flag for specifying single end files."
    time_analysis_also: "Time for each analysis will also be reported."
    prints_version_software: "Prints the version of the software."
    overwrite: "By default stringMLST appends the results to the output_filename if same name is used.\\nThis argument overwrites the previously specified output file."
    fuzzy: "= <fuzzy threshold int>\\nThreshold for reporting a fuzzy match (Default=300). For higher coverage reads this threshold should be set higher to avoid\\nindicating fuzzy match when exact match was more likely. For lower coverage reads, threshold of <100 is recommended"
    get_mlst: "Identifier for getMLST module"
    species: "= <species name>\\nSpecies name from the pubMLST schemes (use \\\"--species show\\\" to get list of available schemes)\\n\\\"all\\\" will download and build all"
    schemes: "Display the list of available schemes"
    locus_one: "locusFile1"
    locus_two: "locusFile2"
    profile: "profileFile"
  }
  output {
    File out_stdout = stdout()
    File out_outputfilenameprints_output_stdout = "${in_outputfilenameprints_output_stdout}"
    File out_overwrite = "${in_overwrite}"
  }
}