class: CommandLineTool
id: bsmap.cwl
inputs:
- id: in_str_query_file
  doc: <str>   query a file, FASTA/FASTQ/BAM format
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_str_reference_sequences
  doc: <str>   reference sequences file, FASTA format
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_str_file_format
  doc: <str>   output alignment file, BSP/SAM/BAM format, if omitted, the output will
    be written to STDOUT in SAM format.
  type: File?
  inputBinding:
    prefix: -o
- id: in_int_seed_size
  doc: <int>   seed size, default=16(WGBS mode), 12(RRBS mode). min=8, max=16.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_float_value_is
  doc: "<float> if this value is between 0 and 1, it's interpreted as the mismatch\
    \ rate w.r.t to the read length.\notherwise it's interpreted as the maximum number\
    \ of mismatches allowed on a read, <=15.\nexample: -v 5 (max #mismatches = 5),\
    \ -v 0.1 (max #mismatches = read_length * 10%)\ndefault=0.08."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_int_gap_size
  doc: "<int>   gap size, BSMAP only allow 1 continuous gap (insert or deletion) with\
    \ up to 3 nucleotides\ndefault=0"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_int_maximum_number
  doc: <int>   maximum number of equal best hits to count, <=1000
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_using_mapping_approach
  doc: using 3-nucleotide mapping approach
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_int_start_read
  doc: '<int>   start from the Nth read or read pair, default: 1'
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_int_end_nth
  doc: '<int>   end at the Nth read or read pair, default: 4,294,967,295'
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_int_index_interval
  doc: <int>   index interval, default=4
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_float_set_ratio
  doc: "<float> set the cut-off ratio for over-represented kmers, default=5e-07\n\
    example: -k 1e-6 means the top 0.0001% over-represented kmer will be skipped in\
    \ alignment"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_int_number_use
  doc: <int>   number of processors to use, default=8
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_activating_rrbs_mode
  doc: "<str>   activating RRBS mapping mode and set restriction enzyme digestion\
    \ sites.\ndigestion position marked by '-', example: -D C-CGG for MspI digestion.\n\
    default: none (whole genome shotgun bisulfite mapping mode)"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_int_seed_random
  doc: "<int>   seed for random number generation used in selecting multiple hits\n\
    other seed values generate pseudo random number based on read index number, to\
    \ allow reproducible mapping results.\ndefault=0. (get seed from system clock,\
    \ mapping results not resproducible.)"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_set_alignment_information
  doc: "<str>   set alignment information for the additional nucleotide transition.\n\
    <str> is in the form of two different nucleotides N1N2,\nindicating N1 in the\
    \ reads could be mapped to N2 in the reference sequences.\ndefault: -M TC, corresponds\
    \ to C=>U(T) transition in bisulfite conversion.\nexample: -M GA could be used\
    \ to detect A=>I(G) transition in RNA editing."
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_int_quality_threshold
  doc: <int>   quality threshold in trimming, 0-40, default=0 (no trim)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_int_base_quality
  doc: <int>   base quality, default=33 [Illumina is using 64, Sanger Institute is
    using 33]
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_int_filter_lowquality
  doc: <int>   filter low-quality reads containing >n Ns, default=5
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_end_sequence_default
  doc: '<str>   3-end adapter sequence, default: none (no trim)'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_int_map_nucleotides
  doc: <int>   map the first N nucleotides of the read, default:160 (map the whole
    read).
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_how_report_repeat
  doc: '[0,1,2] how to report repeat hits, 0=none(unique hit/pair); 1=random one;
    2=all(slow), default:1.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_print_corresponding_reference
  doc: print corresponding reference sequences in SAM output, default=off
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_report_unmapped_reads
  doc: report unmapped reads, default=off
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_print_header_information
  doc: do not print header information in SAM format output
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_verbose_level_message
  doc: "[0,1,2] verbose level: 0=no message displayed (quiet mode);\n1=major message\
    \ (default); 2=detailed message."
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_str_query_b
  doc: <str>   query b file
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_int_minimal_insert
  doc: <int>   minimal insert size allowed, default=28
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_int_maximal_insert
  doc: <int>   maximal insert size allowed, default=1000
  type: boolean?
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_str_file_format
  doc: <str>   output alignment file, BSP/SAM/BAM format, if omitted, the output will
    be written to STDOUT in SAM format.
  type: File?
  outputBinding:
    glob: $(inputs.in_str_file_format)
hints: []
cwlVersion: v1.1
baseCommand:
- bsmap
