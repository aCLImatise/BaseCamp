version 1.0

task MethylDackelPerRead {
  input {
    Int? minimum_mapq_threshold
    Int? minimum_phred_threshold
    String? region_string_extract
    File? bed_file_listing
    File? keep_strand
    File? output_file_name
    Boolean? ignore_flags
    Boolean? require_flags
    Int? at
    Int? chunksize
    String ref_dot_fa
    String input_bam_cram
  }
  command <<<
    MethylDackel perRead \
      ~{ref_dot_fa} \
      ~{input_bam_cram} \
      ~{if defined(minimum_mapq_threshold) then ("-q " +  '"' + minimum_mapq_threshold + '"') else ""} \
      ~{if defined(minimum_phred_threshold) then ("-p " +  '"' + minimum_phred_threshold + '"') else ""} \
      ~{if defined(region_string_extract) then ("-r " +  '"' + region_string_extract + '"') else ""} \
      ~{if defined(bed_file_listing) then ("-l " +  '"' + bed_file_listing + '"') else ""} \
      ~{if (keep_strand) then "--keepStrand" else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if (ignore_flags) then "--ignoreFlags" else ""} \
      ~{if (require_flags) then "--requireFlags" else ""} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""} \
      ~{if defined(chunksize) then ("--chunkSize " +  '"' + chunksize + '"') else ""}
  >>>
  parameter_meta {
    minimum_mapq_threshold: "Minimum MAPQ threshold to include an alignment (default 10)"
    minimum_phred_threshold: "Minimum Phred threshold to include a base (default 5). This must             be >0."
    region_string_extract: "Region string in which to extract methylation"
    bed_file_listing: "A BED file listing regions for inclusion."
    keep_strand: "If a BED file is specified, then this option will cause the\\nstrand column (column 6) to be utilized, if present. Thus, if\\na region has a '+' in this column, then only metrics from the\\ntop strand will be output. Note that the -r option can be used\\nto limit the regions of -l."
    output_file_name: "Output file name [stdout]"
    ignore_flags: "By default, all reads are output. If you would like to\\nignore certain classes of reads then simply give a value for their\\nflags here. Note that an alignment will be logically anded with this\\nflag, so a single bit overlap will lead to exclusion. The default\\nfor this is 0."
    require_flags: "Require each alignment to have all bits in this value\\npresent, or else the alignment is ignored. This is equivalent to the\\n-f option in samtools. The default is 0, which includes all\\nalignments."
    at: "The number of threads to use, the default 1"
    chunksize: "The size of the genome processed by a single thread at a time.\\nThe default is 1000000 bases. This value MUST be at least 1."
    ref_dot_fa: "Reference genome in fasta format. This must be indexed with\\nsamtools faidx"
    input_bam_cram: "An input BAM or CRAM file. This MUST be sorted and should be indexed."
  }
  output {
    File out_stdout = stdout()
    File out_keep_strand = "${in_keep_strand}"
    File out_output_file_name = "${in_output_file_name}"
  }
}