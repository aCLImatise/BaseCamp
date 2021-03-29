version 1.0

task CoconetPreprocess {
  input {
    File? fast_a
    Int? h_five
    File? path_output_output
    Int? threads
    Boolean? debug
    Boolean? quiet
    Boolean? silent
    Directory? continue
    Array[String] bam
    Int? min_ctg_len
    Int? min_prevalence
    Int? min_mapping_quality
    Int? min_aln_coverage
    Int? flag
    String? tlen_range
    Int? min_dtr_size
  }
  command <<<
    coconet preprocess \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(h_five) then ("--h5 " +  '"' + h_five + '"') else ""} \
      ~{if defined(path_output_output) then ("--output " +  '"' + path_output_output + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(min_ctg_len) then ("--min-ctg-len " +  '"' + min_ctg_len + '"') else ""} \
      ~{if defined(min_prevalence) then ("--min-prevalence " +  '"' + min_prevalence + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("--min-mapping-quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(min_aln_coverage) then ("--min-aln-coverage " +  '"' + min_aln_coverage + '"') else ""} \
      ~{if defined(flag) then ("--flag " +  '"' + flag + '"') else ""} \
      ~{if defined(tlen_range) then ("--tlen-range " +  '"' + tlen_range + '"') else ""} \
      ~{if defined(min_dtr_size) then ("--min-dtr-size " +  '"' + min_dtr_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coconet-binning:1.1.0--py_0"
  }
  parameter_meta {
    fast_a: "Path to your assembly file (fasta formatted) (default:\\nNone)"
    h_five: "Experimental: coverage in hdf5 format (keys are\\ncontigs, values are (sample, contig_len) ndarrays\\n(default: None)"
    path_output_output: "Path to output directory (default: output)"
    threads: "Number of threads (default: 5)"
    debug: "Print debugging statements (default: 20)"
    quiet: "Less verbose (default: None)"
    silent: "Only error messages (default: None)"
    continue: "Start from last checkpoint. The output directory needs\\nto be the same. (default: False)"
    bam: "List of paths to your coverage files (bam formatted)\\n(default: None)"
    min_ctg_len: "Minimum contig length (default: 2048)"
    min_prevalence: "Minimum contig prevalence for binning. Contig with\\nless that value are filtered out. (default: 2)"
    min_mapping_quality: "Minimum alignment quality (default: 30)"
    min_aln_coverage: "Discard alignments with less than 50% aligned\\nnucleotides"
    flag: "SAM flag for filtering (same as samtools \\\"-F\\\" option)\\n(default: 3596)"
    tlen_range: "TLEN_RANGE\\nOnly allow for paired alignments with spacing within\\nthis range (default: None)"
    min_dtr_size: "Minimum size of DTR to flag complete contigs (default:\\n10)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_output = "${in_path_output_output}"
    Directory out_continue = "${in_continue}"
  }
}