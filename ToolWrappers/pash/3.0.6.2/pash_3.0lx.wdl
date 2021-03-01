version 1.0

task Pash30lx {
  input {
    File? vertical_input
    File? horizontal_input
    Int? pattern_weight
    Int? pattern_length
    Int? sampling_pattern
    String? vertical_word_offset
    Directory? scratch
    Int? index_memory
    File? ignore_list
    Int? max_mappings
    Int? top_percent
    String? bisulfite_seq
    String? high_sensitivity
    String? medium_sensitivity
    String? low_sensitivity
    String? fast_mode
    Int? keep_hashed_km_ers_percent
    String pash_dot_exe
  }
  command <<<
    pash_3_0lx \
      ~{pash_dot_exe} \
      ~{if defined(vertical_input) then ("--verticalInput " +  '"' + vertical_input + '"') else ""} \
      ~{if defined(horizontal_input) then ("--horizontalInput " +  '"' + horizontal_input + '"') else ""} \
      ~{if defined(pattern_weight) then ("--patternWeight " +  '"' + pattern_weight + '"') else ""} \
      ~{if defined(pattern_length) then ("--patternLength " +  '"' + pattern_length + '"') else ""} \
      ~{if defined(sampling_pattern) then ("--samplingPattern " +  '"' + sampling_pattern + '"') else ""} \
      ~{if defined(vertical_word_offset) then ("--verticalWordOffset " +  '"' + vertical_word_offset + '"') else ""} \
      ~{if defined(scratch) then ("--scratch " +  '"' + scratch + '"') else ""} \
      ~{if defined(index_memory) then ("--indexMemory " +  '"' + index_memory + '"') else ""} \
      ~{if defined(ignore_list) then ("--ignoreList " +  '"' + ignore_list + '"') else ""} \
      ~{if defined(max_mappings) then ("--maxMappings " +  '"' + max_mappings + '"') else ""} \
      ~{if defined(top_percent) then ("--topPercent " +  '"' + top_percent + '"') else ""} \
      ~{if defined(bisulfite_seq) then ("--bisulfiteSeq " +  '"' + bisulfite_seq + '"') else ""} \
      ~{if defined(high_sensitivity) then ("--highSensitivity " +  '"' + high_sensitivity + '"') else ""} \
      ~{if defined(medium_sensitivity) then ("--mediumSensitivity " +  '"' + medium_sensitivity + '"') else ""} \
      ~{if defined(low_sensitivity) then ("--lowSensitivity " +  '"' + low_sensitivity + '"') else ""} \
      ~{if defined(fast_mode) then ("--fastMode " +  '"' + fast_mode + '"') else ""} \
      ~{if defined(keep_hashed_km_ers_percent) then ("--keepHashedKmersPercent " +  '"' + keep_hashed_km_ers_percent + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vertical_input: "Vertical sequence as a fasta input file with full path; if file ends\\nin '.fof', it is assumed the named file contains a list of Fasta files"
    horizontal_input: "Horizontal sequence: as a fasta input file with full path; if file ends\\nin '.fof', it is assumed the named file contains a list of Fasta files"
    pattern_weight: "Number of sampled positions in the sampling pattern"
    pattern_length: "length of sampling pattern, including unsampled positions"
    sampling_pattern: "pattern (e.g. 11011 would sample the two positions, skip\\none position, then sample the next two"
    vertical_word_offset: "request gzip-ed output (default is text)"
    scratch: "directory location"
    index_memory: "of the vertical sequence hash in MB(default 1024)"
    ignore_list: "the kmers present in the ignore list file"
    max_mappings: "number of mappings per read"
    top_percent: "percent from the best alignment score to be reported for each read; use numbers in the interval 0-100; default 1"
    bisulfite_seq: "mapping of bisulfite sequencing reads"
    high_sensitivity: "pash in high-sensitivity mode"
    medium_sensitivity: "pash in medium-sensitivity mode (default setting)"
    low_sensitivity: "pash in low-sensitivity mode"
    fast_mode: "pash in fast mode"
    keep_hashed_km_ers_percent: "amount of hashed kmers to keep; this value should be between 90 and 100; default is 99"
    pash_dot_exe: ""
  }
  output {
    File out_stdout = stdout()
  }
}