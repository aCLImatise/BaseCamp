version 1.0

task MethylDackelMbias {
  input {
    Int? minimum_mapq_threshold
    Int? minimum_phred_threshold
    Int? maximum_perbase_depth
    String? region_string_extract
    File? bed_file_listing
    File? keep_strand
    Int? at
    Int? chunksize
    Boolean? keep_dupes
    Boolean? keep_singleton
    String? keep_discordant
    Boolean? ignore_flags
    Boolean? require_flags
    Boolean? txt
    Boolean? no_svg
    Boolean? no_cpg
    Boolean? chg
    Boolean? chh
    Int? not
    Int? nob
    Int? nc_tot
    Int? nc_tob
    String ref_dot_fa
    String sorted_alignments_dot_bam
    String output_dot_prefix
  }
  command <<<
    MethylDackel mbias \
      ~{ref_dot_fa} \
      ~{sorted_alignments_dot_bam} \
      ~{output_dot_prefix} \
      ~{if defined(minimum_mapq_threshold) then ("-q " +  '"' + minimum_mapq_threshold + '"') else ""} \
      ~{if defined(minimum_phred_threshold) then ("-p " +  '"' + minimum_phred_threshold + '"') else ""} \
      ~{if defined(maximum_perbase_depth) then ("-D " +  '"' + maximum_perbase_depth + '"') else ""} \
      ~{if defined(region_string_extract) then ("-r " +  '"' + region_string_extract + '"') else ""} \
      ~{if defined(bed_file_listing) then ("-l " +  '"' + bed_file_listing + '"') else ""} \
      ~{if (keep_strand) then "--keepStrand" else ""} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""} \
      ~{if defined(chunksize) then ("--chunkSize " +  '"' + chunksize + '"') else ""} \
      ~{if (keep_dupes) then "--keepDupes" else ""} \
      ~{if (keep_singleton) then "--keepSingleton" else ""} \
      ~{if defined(keep_discordant) then ("--keepDiscordant " +  '"' + keep_discordant + '"') else ""} \
      ~{if (ignore_flags) then "--ignoreFlags" else ""} \
      ~{if (require_flags) then "--requireFlags" else ""} \
      ~{if (txt) then "--txt" else ""} \
      ~{if (no_svg) then "--noSVG" else ""} \
      ~{if (no_cpg) then "--noCpG" else ""} \
      ~{if (chg) then "--CHG" else ""} \
      ~{if (chh) then "--CHH" else ""} \
      ~{if defined(not) then ("--nOT " +  '"' + not + '"') else ""} \
      ~{if defined(nob) then ("--nOB " +  '"' + nob + '"') else ""} \
      ~{if defined(nc_tot) then ("--nCTOT " +  '"' + nc_tot + '"') else ""} \
      ~{if defined(nc_tob) then ("--nCTOB " +  '"' + nc_tob + '"') else ""}
  >>>
  parameter_meta {
    minimum_mapq_threshold: "Minimum MAPQ threshold to include an alignment (default 10)"
    minimum_phred_threshold: "Minimum Phred threshold to include a base (default 5). This\\nmust be >0."
    maximum_perbase_depth: "Maximum per-base depth (default 2000)"
    region_string_extract: "Region string in which to extract methylation"
    bed_file_listing: "A BED file listing regions for inclusion."
    keep_strand: "If a BED file is specified, then this option will cause the\\nstrand column (column 6) to be utilized, if present. Thus, if\\na region has a '+' in this column, then only metrics from the\\ntop strand will be output. Note that the -r option can be used\\nto limit the regions of -l."
    at: "The number of threads to use, the default 1"
    chunksize: "The size of the genome processed by a single thread at a time.\\nThe default is 1000000 bases. This value MUST be at least 1."
    keep_dupes: "By default, any alignment marked as a duplicate is ignored.\\nThis option causes them to be incorporated."
    keep_singleton: "By default, if only one read in a pair aligns (a singleton)\\nthen it's ignored."
    keep_discordant: "default, paired-end alignments with the properly-paired bit\\nunset in the FLAG field are ignored. Note that the definition\\nof concordant and discordant is based on your aligner\\nsettings."
    ignore_flags: "By deault, any alignment marked as secondary (bit 0x100),\\nfailing QC (bit 0x200), a PCR/optical duplicate (0x400) or\\nsupplemental (0x800) is ignored. This equates to a value of\\n0xF00 or 3840 in decimal. If you would like to change that,\\nyou can specify a new value here.\\nignored. Specifying this causes them to be included."
    require_flags: "Require each alignment to have all bits in this value\\npresent, or else the alignment is ignored. This is equivalent\\nto the -f option in samtools. The default is 0, which\\nincludes all alignments."
    txt: "Output tab separated metrics to the screen. These can be\\nimported into R or another program for manual plotting and\\nanalysis. Note that coordinates are 1-based."
    no_svg: "Don't produce the SVG files. This option implies --txt. Note\\nthat an output prefix is no longer required with this option."
    no_cpg: "Do not output CpG methylation metrics"
    chg: "Output CHG methylation metrics"
    chh: "Output CHH methylation metrics"
    not: ",INT,INT,INT Inclusion bound for methylation calls from reads/pairs\\noriginating from the original top strand. Each integer\\nrepresents a 1-based position from the end of a read. For\\nexample \\\"--nOT A,B,C,D\\\" translates to, \\\"Include calls from\\nposition A through the Bth read from the end on read #1 and\\nCth through the Dth from the end base on read #2\\\". In other\\nwords \\\"--nOT 5,10,0,0\\\" for a 100 base long read would result\\nin bases 5 through 90 being used. If a 0 is used in any\\nposition then that is translated to mean start/end of the\\nalignment, as appropriate. For example, --nOT 5,0,0,0 would\\ninclude all but the first 4 bases on read #1."
    nob: ",INT,INT,INT"
    nc_tot: ",INT,INT,INT"
    nc_tob: ",INT,INT,INT As with --nOT, but for the original bottom, complementary\\nto the original top, and complementary to the original bottom\\nstrands, respectively."
    ref_dot_fa: ""
    sorted_alignments_dot_bam: ""
    output_dot_prefix: ""
  }
  output {
    File out_stdout = stdout()
    File out_keep_strand = "${in_keep_strand}"
  }
}