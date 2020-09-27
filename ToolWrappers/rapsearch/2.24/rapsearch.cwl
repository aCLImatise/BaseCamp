class: CommandLineTool
id: rapsearch.cwl
inputs:
- id: in_query_file_fasta
  doc: ': query file or stdin (FASTA or FASTQ format)'
  type: File
  inputBinding:
    prefix: -q
- id: in_database_file_base
  doc: ': database file (**base name only**, with full path)'
  type: File
  inputBinding:
    prefix: -d
- id: in_output_file_name
  doc: ': output file name'
  type: File
  inputBinding:
    prefix: -o
- id: in_stream_one_result
  doc: ": stream one result through stdout [1: m8 result, 2: aln result, default:\
    \ don't stream any result through stdout]"
  type: long
  inputBinding:
    prefix: -u
- id: in__number_threads
  doc: ': number of threads [default: 1]'
  type: long
  inputBinding:
    prefix: -z
- id: in_report_logevalue_hit
  doc: ': report log10(E-value) or E-value for each hit [t/T: log10(E-value), the
    default; f/F: E-value]'
  type: long
  inputBinding:
    prefix: -s
- id: in_evalue_threshold_given
  doc: ': E-value threshold, given in the format of log10(E-value), or E-value (when
    -s is set to f) [default: 1.0/10.0].'
  type: double
  inputBinding:
    prefix: -e
- id: in_threshold_bit_score
  doc: ': threshold of bit score [default: 0.0]. It is the alternative option to limit
    the hits to report.'
  type: double
  inputBinding:
    prefix: -i
- id: in_threshold_minimal_alignment
  doc: ': threshold of minimal alignment length [default: 0]'
  type: long
  inputBinding:
    prefix: -l
- id: in_number_show_descriptions
  doc: ": number of database sequences to show one-line descriptions [default: 500].\
    \ If it's -1, all results will be shown."
  type: long
  inputBinding:
    prefix: -v
- id: in_number_show_alignments
  doc: ": number of database sequence to show alignments [default: 100]. If it's -1,\
    \ all results will be shown."
  type: long
  inputBinding:
    prefix: -b
- id: in_type_query_sequences
  doc: ': type of query sequences [u/U:unknown, n/N:nucleotide, a/A:amino acid, q/Q:fastq,
    default: u]'
  type: string
  inputBinding:
    prefix: -t
- id: in_output_allmatched_query
  doc: ': output ALL/MATCHED query reads into the alignment file [t/T: output all
    query reads, f/F: output matched reads, default: f]'
  type: File
  inputBinding:
    prefix: -p
- id: in_apply_gap_extension
  doc: ': apply gap extension [t/T: yes, f/F: no, default: t]'
  type: string
  inputBinding:
    prefix: -g
- id: in_use_fast_mode
  doc: ': use fast mode (10~30 fold) [t/T: yes, f/F: no, default: f]'
  type: long
  inputBinding:
    prefix: -a
- id: in_apply_hssp_criterion
  doc: ': apply HSSP criterion instead of E-value criterion [t/T: HSSP, f/F: E-value
    criteria, default: f]'
  type: string
  inputBinding:
    prefix: -w
- id: in_print_hits_xml
  doc: ': print hits in xml format [t/T: yes, f/F: no, default: f]'
  type: string
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: ': output file name'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_output_allmatched_query
  doc: ': output ALL/MATCHED query reads into the alignment file [t/T: output all
    query reads, f/F: output matched reads, default: f]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_allmatched_query)
cwlVersion: v1.1
baseCommand:
- rapsearch
