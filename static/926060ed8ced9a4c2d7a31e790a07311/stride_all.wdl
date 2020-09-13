version 1.0

task StrideAll {
  input {
    Int? read_length
    Int? insert_size
    Int? thread
    Int? pe_mode
    Int? km_er_size
    Int? km_er_threshold
    Int? min_overlap
  }
  command <<<
    stride all \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(insert_size) then ("--insert-size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(pe_mode) then ("--pe-mode " +  '"' + pe_mode + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(km_er_threshold) then ("--kmer-threshold " +  '"' + km_er_threshold + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""}
  >>>
  parameter_meta {
    read_length: "median read length (if there are multiple libraries, set to the max read length)"
    insert_size: "median insert size (if there are multiple libraries, set to the max insert size)"
    thread: "number of threads (default: 16)"
    pe_mode: "1 - paired reads are separated with the first read in READS1 and the second\\nread in READS2 of the same library (default)\\n2 - paired reads are interleaved within a single file of the same library."
    km_er_size: "length of kmer (default: 31)"
    km_er_threshold: "kmer frequency cutoff (default: 3)"
    min_overlap: "minimum reliable overlap length (default: read length * 0.8)"
  }
  output {
    File out_stdout = stdout()
  }
}