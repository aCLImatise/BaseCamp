version 1.0

task Pash30lx {
  input {
    Boolean? vertical_input
    Boolean? horizontal_input
    Boolean? diagonals
    Boolean? pattern_weight
    Boolean? pattern_length
    Boolean? sampling_pattern
    Boolean? vertical_word_offset
    File? output_file
    Boolean? score
    Boolean? gzip
    Boolean? scratch
    Boolean? index_memory
    Boolean? ignore_list
    Boolean? max_mappings
    Boolean? top_percent
    Boolean? bisulfite_seq
    Boolean? high_sensitivity
    Boolean? medium_sensitivity
    Boolean? low_sensitivity
    Boolean? fast_mode
    Int? keep_hashed_km_ers_percent
    String pash_dot_exe
  }
  command <<<
    pash_3_0lx \
      ~{pash_dot_exe} \
      ~{if (vertical_input) then "--verticalInput" else ""} \
      ~{if (horizontal_input) then "--horizontalInput" else ""} \
      ~{if (diagonals) then "--diagonals" else ""} \
      ~{if (pattern_weight) then "--patternWeight" else ""} \
      ~{if (pattern_length) then "--patternLength" else ""} \
      ~{if (sampling_pattern) then "--samplingPattern" else ""} \
      ~{if (vertical_word_offset) then "--verticalWordOffset" else ""} \
      ~{if (output_file) then "--outputFile" else ""} \
      ~{if (score) then "--score" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (scratch) then "--scratch" else ""} \
      ~{if (index_memory) then "--indexMemory" else ""} \
      ~{if (ignore_list) then "--ignoreList" else ""} \
      ~{if (max_mappings) then "--maxMappings" else ""} \
      ~{if (top_percent) then "--topPercent" else ""} \
      ~{if (bisulfite_seq) then "--bisulfiteSeq" else ""} \
      ~{if (high_sensitivity) then "--highSensitivity" else ""} \
      ~{if (medium_sensitivity) then "--mediumSensitivity" else ""} \
      ~{if (low_sensitivity) then "--lowSensitivity" else ""} \
      ~{if (fast_mode) then "--fastMode" else ""} \
      ~{if defined(keep_hashed_km_ers_percent) then ("--keepHashedKmersPercent " +  '"' + keep_hashed_km_ers_percent + '"') else ""}
  >>>
  parameter_meta {
    vertical_input: "| -v <verticalFile>  Vertical sequence as a fasta input file with full path; if file ends\\nin '.fof', it is assumed the named file contains a list of Fasta files"
    horizontal_input: "| -h <horizontalFile> Horizontal sequence: as a fasta input file with full path; if file ends\\nin '.fof', it is assumed the named file contains a list of Fasta files"
    diagonals: "| -d <number of diagonals>"
    pattern_weight: "| -k <pattern weight> Number of sampled positions in the sampling pattern"
    pattern_length: "| -n total length of sampling pattern, including unsampled positions"
    sampling_pattern: "| -m sampling pattern (e.g. 11011 would sample the two positions, skip\\none position, then sample the next two"
    vertical_word_offset: "| -G <vertical word offset gap - must be a multiple of diagonal offset gap>"
    output_file: "| -o <output file name>"
    score: "| -s <scoreCutoff>"
    gzip: "| -z  request gzip-ed output (default is text)"
    scratch: "| -S Scratch directory location"
    index_memory: "| -M index of the vertical sequence hash in MB(default 1024)"
    ignore_list: "| -L ignore the kmers present in the ignore list file"
    max_mappings: "| -N maximum number of mappings per read"
    top_percent: "| -P top percent from the best alignment score to be reported for each read; use numbers in the interval 0-100; default 1"
    bisulfite_seq: "| -B perform mapping of bisulfite sequencing reads"
    high_sensitivity: "| -0 run pash in high-sensitivity mode"
    medium_sensitivity: "| -1 run pash in medium-sensitivity mode (default setting)"
    low_sensitivity: "| -2 run pash in low-sensitivity mode"
    fast_mode: "| -3 run pash in fast mode"
    keep_hashed_km_ers_percent: "amount of hashed kmers to keep; this value should be between 90 and 100; default is 99"
    pash_dot_exe: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}