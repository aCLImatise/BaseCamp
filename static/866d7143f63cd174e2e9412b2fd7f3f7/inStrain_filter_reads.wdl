version 1.0

task InStrainFilterReads {
  input {
    Directory? location_store_reports
    Int? processes
    Boolean? debug
    Int? min_read_ani
    Int? min_mapq
    Int? max_insert_relative
    Int? min_insert
    String? pairing_filter
    File? priority_reads
    Boolean? detailed_mapping_info
    String bam
    String fast_a
  }
  command <<<
    inStrain filter_reads \
      ~{bam} \
      ~{fast_a} \
      ~{if defined(location_store_reports) then ("--output " +  '"' + location_store_reports + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(min_read_ani) then ("--min_read_ani " +  '"' + min_read_ani + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(max_insert_relative) then ("--max_insert_relative " +  '"' + max_insert_relative + '"') else ""} \
      ~{if defined(min_insert) then ("--min_insert " +  '"' + min_insert + '"') else ""} \
      ~{if defined(pairing_filter) then ("--pairing_filter " +  '"' + pairing_filter + '"') else ""} \
      ~{if defined(priority_reads) then ("--priority_reads " +  '"' + priority_reads + '"') else ""} \
      ~{if (detailed_mapping_info) then "--detailed_mapping_info" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/instrain:1.5.3--py_0"
  }
  parameter_meta {
    location_store_reports: "Location of folder to store read report(s) (default:\\nNone)"
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    min_read_ani: "Minimum percent identity of read pairs to consensus to\\nuse the reads. Must be >, not >= (default: 0.95)"
    min_mapq: "Minimum mapq score of EITHER read in a pair to use\\nthat pair. Must be >, not >= (default: -1)"
    max_insert_relative: "Multiplier to determine maximum insert size between\\ntwo reads - default is to use 3x median insert size.\\nMust be >, not >= (default: 3)"
    min_insert: "Minimum insert size between two reads - default is 50\\nbp. If two reads are 50bp each and overlap completely,\\ntheir insert will be 50. Must be >, not >= (default:\\n50)"
    pairing_filter: "How should paired reads be handled?\\npaired_only = Only paired reads are retained\\nnon_discordant = Keep all paired reads and singleton reads that map to a single scaffold\\nall_reads = Keep all reads regardless of pairing status (NOT RECOMMENDED; See documentation for deatils)\\n(default: paired_only)"
    priority_reads: "The location of a list of reads that should be\\nretained regardless of pairing status (for example\\nlong reads or merged reads). This can be a .fastq file\\nor text file with list of read names (will assume file\\nis compressed if ends in .gz (default: None)"
    detailed_mapping_info: "Make a detailed read report indicating deatils about\\neach individual mapped read (default: False)\\n"
    bam: "Sorted .bam file"
    fast_a: "Fasta file the bam is mapped to"
  }
  output {
    File out_stdout = stdout()
  }
}