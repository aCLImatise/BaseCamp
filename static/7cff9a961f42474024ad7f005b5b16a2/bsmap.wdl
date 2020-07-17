version 1.0

task Bsmap {
  input {
    Boolean? str_query_format
    Boolean? str_reference_sequences
    Boolean? str_output_alignment
    Boolean? int_seed_size
    Boolean? float_value_interpreted
    Boolean? int_gap_size
    Boolean? int_maximum_number
    Boolean? using_nucleotide_approach
    Boolean? int_start_nth
    Boolean? int_end_read
    Boolean? int_index_interval
    Boolean? float_set_ratio
    Boolean? int_number_use
    Boolean? str_activating_mode
    Boolean? int_seed_random
    Boolean? set_information_default
    Boolean? str_set_alignment
    Boolean? int_quality_threshold
    Boolean? int_quality_default
    Boolean? int_filter_lowquality
    Boolean? str_end_adapter
    Boolean? int_map_nucleotides
    Boolean? how_report_hits
    Boolean? print_corresponding_reference
    Boolean? report_unmapped_reads
    Boolean? print_header_information
    Boolean? verbose_level_message
    Boolean? leave_output_unsortedreads
    Boolean? str_query_b
    Boolean? int_minimal_insert
    Boolean? int_maximal_insert
  }
  command <<<
    bsmap \
      ~{true="-a" false="" str_query_format} \
      ~{true="-d" false="" str_reference_sequences} \
      ~{true="-o" false="" str_output_alignment} \
      ~{true="-s" false="" int_seed_size} \
      ~{true="-v" false="" float_value_interpreted} \
      ~{true="-g" false="" int_gap_size} \
      ~{true="-w" false="" int_maximum_number} \
      ~{true="-3" false="" using_nucleotide_approach} \
      ~{true="-B" false="" int_start_nth} \
      ~{true="-E" false="" int_end_read} \
      ~{true="-I" false="" int_index_interval} \
      ~{true="-k" false="" float_set_ratio} \
      ~{true="-p" false="" int_number_use} \
      ~{true="-D" false="" str_activating_mode} \
      ~{true="-S" false="" int_seed_random} \
      ~{true="-n" false="" set_information_default} \
      ~{true="-M" false="" str_set_alignment} \
      ~{true="-q" false="" int_quality_threshold} \
      ~{true="-z" false="" int_quality_default} \
      ~{true="-f" false="" int_filter_lowquality} \
      ~{true="-A" false="" str_end_adapter} \
      ~{true="-L" false="" int_map_nucleotides} \
      ~{true="-r" false="" how_report_hits} \
      ~{true="-R" false="" print_corresponding_reference} \
      ~{true="-u" false="" report_unmapped_reads} \
      ~{true="-H" false="" print_header_information} \
      ~{true="-V" false="" verbose_level_message} \
      ~{true="-U" false="" leave_output_unsortedreads} \
      ~{true="-b" false="" str_query_b} \
      ~{true="-m" false="" int_minimal_insert} \
      ~{true="-x" false="" int_maximal_insert}
  >>>
  parameter_meta {
    str_query_format: "<str>   query a file, FASTA/FASTQ/BAM format"
    str_reference_sequences: "<str>   reference sequences file, FASTA format"
    str_output_alignment: "<str>   output alignment file, BSP/SAM/BAM format, if omitted, the output will be written to STDOUT in SAM format."
    int_seed_size: "<int>   seed size, default=16(WGBS mode), 12(RRBS mode). min=8, max=16."
    float_value_interpreted: "<float> if this value is between 0 and 1, it's interpreted as the mismatch rate w.r.t to the read length. otherwise it's interpreted as the maximum number of mismatches allowed on a read, <=15. example: -v 5 (max #mismatches = 5), -v 0.1 (max #mismatches = read_length * 10%) default=0.08."
    int_gap_size: "<int>   gap size, BSMAP only allow 1 continuous gap (insert or deletion) with up to 3 nucleotides default=0"
    int_maximum_number: "<int>   maximum number of equal best hits to count, <=1000"
    using_nucleotide_approach: "using 3-nucleotide mapping approach"
    int_start_nth: "<int>   start from the Nth read or read pair, default: 1"
    int_end_read: "<int>   end at the Nth read or read pair, default: 4,294,967,295"
    int_index_interval: "<int>   index interval, default=4"
    float_set_ratio: "<float> set the cut-off ratio for over-represented kmers, default=5e-07 example: -k 1e-6 means the top 0.0001% over-represented kmer will be skipped in alignment"
    int_number_use: "<int>   number of processors to use, default=8"
    str_activating_mode: "<str>   activating RRBS mapping mode and set restriction enzyme digestion sites.  digestion position marked by '-', example: -D C-CGG for MspI digestion. default: none (whole genome shotgun bisulfite mapping mode)"
    int_seed_random: "<int>   seed for random number generation used in selecting multiple hits other seed values generate pseudo random number based on read index number, to allow reproducible mapping results.  default=0. (get seed from system clock, mapping results not resproducible.)"
    set_information_default: "[0,1]   set mapping strand information. default: 0 -n 0: only map to 2 forward strands, i.e. BSW(++) and BSC(-+),  for PE sequencing, map read#1 to ++ and -+, read#2 to +- and --. -n 1: map SE or PE reads to all 4 strands, i.e. ++, +-, -+, -- "
    str_set_alignment: "<str>   set alignment information for the additional nucleotide transition.  <str> is in the form of two different nucleotides N1N2,  indicating N1 in the reads could be mapped to N2 in the reference sequences. default: -M TC, corresponds to C=>U(T) transition in bisulfite conversion.  example: -M GA could be used to detect A=>I(G) transition in RNA editing. "
    int_quality_threshold: "<int>   quality threshold in trimming, 0-40, default=0 (no trim)"
    int_quality_default: "<int>   base quality, default=33 [Illumina is using 64, Sanger Institute is using 33]"
    int_filter_lowquality: "<int>   filter low-quality reads containing >n Ns, default=5"
    str_end_adapter: "<str>   3-end adapter sequence, default: none (no trim)"
    int_map_nucleotides: "<int>   map the first N nucleotides of the read, default:160 (map the whole read)."
    how_report_hits: "[0,1,2] how to report repeat hits, 0=none(unique hit/pair); 1=random one; 2=all(slow), default:1."
    print_corresponding_reference: "print corresponding reference sequences in SAM output, default=off"
    report_unmapped_reads: "report unmapped reads, default=off"
    print_header_information: "do not print header information in SAM format output"
    verbose_level_message: "[0,1,2] verbose level: 0=no message displayed (quiet mode);  1=major message (default); 2=detailed message."
    leave_output_unsortedreads: "leave the output bam unsorted(reads will follow the order of the input fastq files), default=off"
    str_query_b: "<str>   query b file"
    int_minimal_insert: "<int>   minimal insert size allowed, default=28"
    int_maximal_insert: "<int>   maximal insert size allowed, default=1000"
  }
}