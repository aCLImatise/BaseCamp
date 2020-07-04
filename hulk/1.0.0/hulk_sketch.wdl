version 1.0

task HulkSketch {
  input {
    String? fast_q
    Boolean? fast_a
    String? window_size
    String? interval
    String? sketch_size
    Float? decay_ratio
    Boolean? stream
    String? banner_label
    Boolean? k_hf
    Boolean? kmv
    String? km_er_size
    String? log
    String? outfile
    Int? processors
    Boolean? profiling
    String? flags
  }
  command <<<
    hulk sketch \
      ~{flags} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(window_size) then ("--windowSize " +  '"' + window_size + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(sketch_size) then ("--sketchSize " +  '"' + sketch_size + '"') else ""} \
      ~{if defined(decay_ratio) then ("--decayRatio " +  '"' + decay_ratio + '"') else ""} \
      ~{true="--stream" false="" stream} \
      ~{if defined(banner_label) then ("--bannerLabel " +  '"' + banner_label + '"') else ""} \
      ~{true="--khf" false="" k_hf} \
      ~{true="--kmv" false="" kmv} \
      ~{if defined(km_er_size) then ("--kmerSize " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{true="--profiling" false="" profiling}
  >>>
  parameter_meta {
    fast_q: "FASTQ file(s) to sketch (can also pipe in STDIN)"
    fast_a: "tells HULK that the input file is actually FASTA format (.fna/.fasta/.fa), not FASTQ (experimental feature)"
    window_size: "minimizer window size (default 9)"
    interval: "size of k-mer sampling interval (default 0 (= no interval))"
    sketch_size: "size of sketch (default 50)"
    decay_ratio: "decay ratio used for concept drift (1.0 = concept drift disabled) (default 1)"
    stream: "prints the sketches to STDOUT after every interval is reached, whilst still writting them to disk (log file is redirected to disk))"
    banner_label: "adds a label to the sketch object, for use with BANNER (default \"blank\")"
    k_hf: "also generate a MinHash K-Hash Functions sketch"
    kmv: "also generate a MinHash K-Minimum Values (bottom-k) sketch"
    km_er_size: "minimizer k-mer length (default 21)"
    log: "filename for log file, if omitted then STDOUT used by default"
    outfile: "directory and basename for saving the outfile(s) (default \"./hulk-20200619040918\")"
    processors: "number of processors to use (default 1)"
    profiling: "create the files needed to profile HULK using the go tool pprof"
    flags: ""
  }
}