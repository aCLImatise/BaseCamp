version 1.0

task PerbaseOnlydepth {
  input {
    Boolean? fast_mode
    Boolean? mate_fix
    Boolean? no_merge
    Boolean? zero_base
    File? bcf_file
    File? bed_file
    Int? channel_size_modifier
    Int? chunksize
    Int? exclude_flags
    Int? include_flags
    Int? min_mapq
    File? output_path_defaults
    String? ref_fast_a
    Int? threads
    String? flags
  }
  command <<<
    perbase only_depth \
      ~{flags} \
      ~{if (fast_mode) then "--fast-mode" else ""} \
      ~{if (mate_fix) then "--mate-fix" else ""} \
      ~{if (no_merge) then "--no-merge" else ""} \
      ~{if (zero_base) then "--zero-base" else ""} \
      ~{if defined(bcf_file) then ("--bcf-file " +  '"' + bcf_file + '"') else ""} \
      ~{if defined(bed_file) then ("--bed-file " +  '"' + bed_file + '"') else ""} \
      ~{if defined(channel_size_modifier) then ("--channel-size-modifier " +  '"' + channel_size_modifier + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(exclude_flags) then ("--exclude-flags " +  '"' + exclude_flags + '"') else ""} \
      ~{if defined(include_flags) then ("--include-flags " +  '"' + include_flags + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(output_path_defaults) then ("--output " +  '"' + output_path_defaults + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref-fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perbase:0.6.3--h35a96ae_0"
  }
  parameter_meta {
    fast_mode: "Calculate depth based only on read starts/stops, see docs for full details"
    mate_fix: "Fix overlapping mates counts, see docs for full details"
    no_merge: "Skip merging adjacent bases that have the same depth"
    zero_base: "Output positions as 0-based instead of 1-based"
    bcf_file: "A BCF/VCF file containing positions of interest. If specified, only bases from the given positions will be\\nreported on. Note that it may be more efficient to calculate depth over regions if your positions are\\nclustered tightly together"
    bed_file: "A BED file containing regions of interest. If specified, only bases from the given regions will be reported\\non"
    channel_size_modifier: "The fraction of a gigabyte to allocate per thread for message passing, can be greater than 1.0 [default:\\n0.001]"
    chunksize: "The ideal number of basepairs each worker receives. Total bp in memory at one time is (threads - 2) *\\nchunksize [default: 1000000]"
    exclude_flags: "SAM flags to exclude, recommended 3848 [default: 0]"
    include_flags: "SAM flags to include [default: 0]"
    min_mapq: "Minimum MAPQ for a read to count toward depth [default: 0]"
    output_path_defaults: "Output path, defaults to stdout"
    ref_fast_a: "Indexed reference fasta, set if using CRAM"
    threads: "The number of threads to use [default: 8]"
    flags: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_path_defaults = "${in_output_path_defaults}"
  }
}