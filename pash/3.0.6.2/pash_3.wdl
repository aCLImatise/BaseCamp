version 1.0

task Pash3.0lx {
  input {
    Boolean? vertical_input
    Boolean? horizontal_input
    Boolean? diagonals
    Boolean? pattern_weight
    Boolean? pattern_length
    Boolean? sampling_pattern
    Boolean? vertical_word_offset
    Boolean? output_file
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
    String? keep_hashed_km_ers_percent
    String pash_dot_exe
  }
  command <<<
    pash-3.0lx \
      ~{pash_dot_exe} \
      ~{true="--verticalInput" false="" vertical_input} \
      ~{true="--horizontalInput" false="" horizontal_input} \
      ~{true="--diagonals" false="" diagonals} \
      ~{true="--patternWeight" false="" pattern_weight} \
      ~{true="--patternLength" false="" pattern_length} \
      ~{true="--samplingPattern" false="" sampling_pattern} \
      ~{true="--verticalWordOffset" false="" vertical_word_offset} \
      ~{true="--outputFile" false="" output_file} \
      ~{true="--score" false="" score} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--scratch" false="" scratch} \
      ~{true="--indexMemory" false="" index_memory} \
      ~{true="--ignoreList" false="" ignore_list} \
      ~{true="--maxMappings" false="" max_mappings} \
      ~{true="--topPercent" false="" top_percent} \
      ~{true="--bisulfiteSeq" false="" bisulfite_seq} \
      ~{true="--highSensitivity" false="" high_sensitivity} \
      ~{true="--mediumSensitivity" false="" medium_sensitivity} \
      ~{true="--lowSensitivity" false="" low_sensitivity} \
      ~{true="--fastMode" false="" fast_mode} \
      ~{if defined(keep_hashed_km_ers_percent) then ("--keepHashedKmersPercent " +  '"' + keep_hashed_km_ers_percent + '"') else ""}
  >>>
  parameter_meta {
    vertical_input: "| -v <verticalFile>  Vertical sequence as a fasta input file with full path; if file ends in '.fof', it is assumed the named file contains a list of Fasta files"
    horizontal_input: "| -h <horizontalFile> Horizontal sequence: as a fasta input file with full path; if file ends in '.fof', it is assumed the named file contains a list of Fasta files"
    diagonals: "| -d <number of diagonals> "
    pattern_weight: "| -k <pattern weight> Number of sampled positions in the sampling pattern"
    pattern_length: "| -n total length of sampling pattern, including unsampled positions"
    sampling_pattern: "| -m sampling pattern (e.g. 11011 would sample the two positions, skip one position, then sample the next two"
    vertical_word_offset: "| -G <vertical word offset gap - must be a multiple of diagonal offset gap>"
    output_file: "| -o <output file name>"
    score: "| -s <scoreCutoff>"
    gzip: "| -z  request gzip-ed output (default is text)"
    scratch: "| -S Scratch directory location "
    index_memory: "| -M index of the vertical sequence hash in MB(default 1024)"
    ignore_list: "| -L ignore the kmers present in the ignore list file"
    max_mappings: "| -N maximum number of mappings per read"
    top_percent: "| -P top percent from the best alignment score to be reported for each read; use numbers in the interval 0-100; default 1"
    bisulfite_seq: "| -B perform mapping of bisulfite sequencing reads"
    high_sensitivity: "| -0 run pash in high-sensitivity mode "
    medium_sensitivity: "| -1 run pash in medium-sensitivity mode (default setting)"
    low_sensitivity: "| -2 run pash in low-sensitivity mode "
    fast_mode: "| -3 run pash in fast mode "
    keep_hashed_km_ers_percent: "amount of hashed kmers to keep; this value should be between 90 and 100; default is 99 "
    pash_dot_exe: ""
  }
}