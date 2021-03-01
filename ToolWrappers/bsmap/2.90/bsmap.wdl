version 1.0

task Bsmap {
  input {
    Boolean? str_query_file
    Boolean? str_reference_sequences
    File? str_file_format
    Boolean? int_seed_size
    Boolean? float_value_is
    Boolean? int_gap_size
    Boolean? int_maximum_number
    Boolean? using_mapping_approach
    Boolean? int_start_read
    Boolean? int_end_nth
    Boolean? int_index_interval
    Boolean? float_set_ratio
    Boolean? int_number_use
    Boolean? activating_rrbs_mode
    Boolean? int_seed_random
    Boolean? set_alignment_information
    Boolean? int_quality_threshold
    Boolean? int_base_quality
    Boolean? int_filter_lowquality
    Boolean? end_sequence_default
    Boolean? int_map_nucleotides
    Boolean? how_report_repeat
    Boolean? print_corresponding_reference
    Boolean? report_unmapped_reads
    Boolean? print_header_information
    Boolean? verbose_level_message
    Boolean? str_query_b
    Boolean? int_minimal_insert
    Boolean? int_maximal_insert
  }
  command <<<
    bsmap \
      ~{if (str_query_file) then "-a" else ""} \
      ~{if (str_reference_sequences) then "-d" else ""} \
      ~{if (str_file_format) then "-o" else ""} \
      ~{if (int_seed_size) then "-s" else ""} \
      ~{if (float_value_is) then "-v" else ""} \
      ~{if (int_gap_size) then "-g" else ""} \
      ~{if (int_maximum_number) then "-w" else ""} \
      ~{if (using_mapping_approach) then "-3" else ""} \
      ~{if (int_start_read) then "-B" else ""} \
      ~{if (int_end_nth) then "-E" else ""} \
      ~{if (int_index_interval) then "-I" else ""} \
      ~{if (float_set_ratio) then "-k" else ""} \
      ~{if (int_number_use) then "-p" else ""} \
      ~{if (activating_rrbs_mode) then "-D" else ""} \
      ~{if (int_seed_random) then "-S" else ""} \
      ~{if (set_alignment_information) then "-M" else ""} \
      ~{if (int_quality_threshold) then "-q" else ""} \
      ~{if (int_base_quality) then "-z" else ""} \
      ~{if (int_filter_lowquality) then "-f" else ""} \
      ~{if (end_sequence_default) then "-A" else ""} \
      ~{if (int_map_nucleotides) then "-L" else ""} \
      ~{if (how_report_repeat) then "-r" else ""} \
      ~{if (print_corresponding_reference) then "-R" else ""} \
      ~{if (report_unmapped_reads) then "-u" else ""} \
      ~{if (print_header_information) then "-H" else ""} \
      ~{if (verbose_level_message) then "-V" else ""} \
      ~{if (str_query_b) then "-b" else ""} \
      ~{if (int_minimal_insert) then "-m" else ""} \
      ~{if (int_maximal_insert) then "-x" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    str_query_file: "<str>   query a file, FASTA/FASTQ/BAM format"
    str_reference_sequences: "<str>   reference sequences file, FASTA format"
    str_file_format: "<str>   output alignment file, BSP/SAM/BAM format, if omitted, the output will be written to STDOUT in SAM format."
    int_seed_size: "<int>   seed size, default=16(WGBS mode), 12(RRBS mode). min=8, max=16."
    float_value_is: "<float> if this value is between 0 and 1, it's interpreted as the mismatch rate w.r.t to the read length.\\notherwise it's interpreted as the maximum number of mismatches allowed on a read, <=15.\\nexample: -v 5 (max #mismatches = 5), -v 0.1 (max #mismatches = read_length * 10%)\\ndefault=0.08."
    int_gap_size: "<int>   gap size, BSMAP only allow 1 continuous gap (insert or deletion) with up to 3 nucleotides\\ndefault=0"
    int_maximum_number: "<int>   maximum number of equal best hits to count, <=1000"
    using_mapping_approach: "using 3-nucleotide mapping approach"
    int_start_read: "<int>   start from the Nth read or read pair, default: 1"
    int_end_nth: "<int>   end at the Nth read or read pair, default: 4,294,967,295"
    int_index_interval: "<int>   index interval, default=4"
    float_set_ratio: "<float> set the cut-off ratio for over-represented kmers, default=5e-07\\nexample: -k 1e-6 means the top 0.0001% over-represented kmer will be skipped in alignment"
    int_number_use: "<int>   number of processors to use, default=8"
    activating_rrbs_mode: "<str>   activating RRBS mapping mode and set restriction enzyme digestion sites.\\ndigestion position marked by '-', example: -D C-CGG for MspI digestion.\\ndefault: none (whole genome shotgun bisulfite mapping mode)"
    int_seed_random: "<int>   seed for random number generation used in selecting multiple hits\\nother seed values generate pseudo random number based on read index number, to allow reproducible mapping results.\\ndefault=0. (get seed from system clock, mapping results not resproducible.)"
    set_alignment_information: "<str>   set alignment information for the additional nucleotide transition.\\n<str> is in the form of two different nucleotides N1N2,\\nindicating N1 in the reads could be mapped to N2 in the reference sequences.\\ndefault: -M TC, corresponds to C=>U(T) transition in bisulfite conversion.\\nexample: -M GA could be used to detect A=>I(G) transition in RNA editing."
    int_quality_threshold: "<int>   quality threshold in trimming, 0-40, default=0 (no trim)"
    int_base_quality: "<int>   base quality, default=33 [Illumina is using 64, Sanger Institute is using 33]"
    int_filter_lowquality: "<int>   filter low-quality reads containing >n Ns, default=5"
    end_sequence_default: "<str>   3-end adapter sequence, default: none (no trim)"
    int_map_nucleotides: "<int>   map the first N nucleotides of the read, default:160 (map the whole read)."
    how_report_repeat: "[0,1,2] how to report repeat hits, 0=none(unique hit/pair); 1=random one; 2=all(slow), default:1."
    print_corresponding_reference: "print corresponding reference sequences in SAM output, default=off"
    report_unmapped_reads: "report unmapped reads, default=off"
    print_header_information: "do not print header information in SAM format output"
    verbose_level_message: "[0,1,2] verbose level: 0=no message displayed (quiet mode);\\n1=major message (default); 2=detailed message."
    str_query_b: "<str>   query b file"
    int_minimal_insert: "<int>   minimal insert size allowed, default=28"
    int_maximal_insert: "<int>   maximal insert size allowed, default=1000"
  }
  output {
    File out_stdout = stdout()
    File out_str_file_format = "${in_str_file_format}"
  }
}