version 1.0

task SSAKE {
  input {
    Boolean? file_containing_reads
    Boolean? fasta_file_containing_sequence
    Boolean? minimum_depth_coverage
    Boolean? fasta_file_containing_sequences
    Boolean? minimum_number_overlapping
    Boolean? minimum_number_reads
    Boolean? minimum_base_ratio
    Boolean? trim_when_exhausted
    Boolean? track_base_coverage
    Boolean? ignore_read_mapping
    Boolean? base_name_your
    Boolean? minimum_contig_size
    Boolean? break_tie_pick
    Boolean? pairedend_reads_used
    Boolean? runs_verbose_mode
    Boolean? error_allowed_mean
    Boolean? minimum_number_links
    Boolean? maximum_link_ratio
  }
  command <<<
    SSAKE \
      ~{if (file_containing_reads) then "-f" else ""} \
      ~{if (fasta_file_containing_sequence) then "-g" else ""} \
      ~{if (minimum_depth_coverage) then "-w" else ""} \
      ~{if (fasta_file_containing_sequences) then "-s" else ""} \
      ~{if (minimum_number_overlapping) then "-m" else ""} \
      ~{if (minimum_number_reads) then "-o" else ""} \
      ~{if (minimum_base_ratio) then "-r" else ""} \
      ~{if (trim_when_exhausted) then "-t" else ""} \
      ~{if (track_base_coverage) then "-c" else ""} \
      ~{if (ignore_read_mapping) then "-y" else ""} \
      ~{if (base_name_your) then "-b" else ""} \
      ~{if (minimum_contig_size) then "-z" else ""} \
      ~{if (break_tie_pick) then "-q" else ""} \
      ~{if (pairedend_reads_used) then "-p" else ""} \
      ~{if (runs_verbose_mode) then "-v" else ""} \
      ~{if (error_allowed_mean) then "-e" else ""} \
      ~{if (minimum_number_links) then "-l" else ""} \
      ~{if (maximum_link_ratio) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_containing_reads: "File containing all the [paired (-p 1)] reads (required)\\nWith -p 1:"
    fasta_file_containing_sequence: "Fasta file containing unpaired sequence reads (optional)"
    minimum_depth_coverage: "Minimum depth of coverage allowed for contigs (e.g. -w 1 = process all reads [v3.7 behavior], required, recommended -w 5)\\n*The assembly will stop when 50+ contigs with coverage < -w have been seen.*"
    fasta_file_containing_sequences: "Fasta file containing sequences to use as seeds exclusively (specify only if different from read set, optional)\\n-i Independent (de novo) assembly  i.e Targets used to recruit reads for de novo assembly, not guide/seed reference-based assemblies (-i 1 = yes (default), 0 = no, optional)\\n-j Target sequence word size to hash (default -j 15)\\n-u Apply read space restriction to seeds while -s option in use (-u 1 = yes, default = no, optional)"
    minimum_number_overlapping: "Minimum number of overlapping bases with the seed/contig during overhang consensus build up (default -m 20)"
    minimum_number_reads: "Minimum number of reads needed to call a base during an extension (default -o 2)"
    minimum_base_ratio: "Minimum base ratio used to accept a overhang consensus base (default -r 0.7)"
    trim_when_exhausted: "Trim up to -t base(s) on the contig end when all possibilities have been exhausted for an extension (default -t 0, optional)"
    track_base_coverage: "Track base coverage and read position for each contig (default -c 0, optional)"
    ignore_read_mapping: "Ignore read mapping to consensus (-y 1 = yes, default = no, optional)"
    base_name_your: "Base name for your output files (optional)"
    minimum_contig_size: "Minimum contig size to track base coverage and read position (default -z 100, optional)"
    break_tie_pick: "Break tie when no consensus base at position, pick random base (-q 1 = yes, default = no, optional)"
    pairedend_reads_used: "Paired-end reads used? (-p 1 = yes, default = no, optional)"
    runs_verbose_mode: "Runs in verbose mode (-v 1 = yes, default = no, optional)"
    error_allowed_mean: "Error (%) allowed on mean distance   e.g. -e 0.75  == distance +/- 75% (default -e 0.75, optional)"
    minimum_number_links: "Minimum number of links (read pairs) to compute scaffold (default -k 5, optional)"
    maximum_link_ratio: "Maximum link ratio between two best contig pairs *higher values lead to least accurate scaffolding* (default -a 0.3, optional)"
  }
  output {
    File out_stdout = stdout()
  }
}