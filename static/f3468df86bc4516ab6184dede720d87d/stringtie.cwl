class: CommandLineTool
id: stringtie.cwl
inputs:
- id: in_conservative
  doc: ': conservative transcript assembly, same as -t -c 1.5 -f 0.05'
  type: boolean?
  inputBinding:
    prefix: --conservative
- id: in_rf
  doc: ': assume stranded library fr-firststrand'
  type: boolean?
  inputBinding:
    prefix: --rf
- id: in_fr
  doc: ': assume stranded library fr-secondstrand'
  type: boolean?
  inputBinding:
    prefix: --fr
- id: in_annotation_use_gtfgff
  doc: annotation to use for guiding the assembly process (GTF/GFF3)
  type: long?
  inputBinding:
    prefix: -G
- id: in_ptf
  doc: ': load point-features from a given 4 column feature file <f_tab>'
  type: boolean?
  inputBinding:
    prefix: --ptf
- id: in_pathfile_name_stdout
  doc: 'path/file name for the assembled transcripts GTF (default: stdout)'
  type: File?
  inputBinding:
    prefix: -o
- id: in_prefix_output_transcripts
  doc: 'prefix for output transcripts (default: STRG)'
  type: string?
  inputBinding:
    prefix: -l
- id: in_isoform_fraction_default
  doc: 'isoform fraction (default: 0.01)'
  type: double?
  inputBinding:
    prefix: -f
- id: in_reads_processing_enforces
  doc: reads processing; also enforces -s 1.5 -g 0 (default:false)
  type: double?
  inputBinding:
    prefix: -L
- id: in_long_reads_provided
  doc: "long reads are provided, just clean and collapse the reads but\ndo not assemble"
  type: string?
  inputBinding:
    prefix: -R
- id: in_assembled_transcript_length
  doc: 'assembled transcript length (default: 200)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_anchor_length_junctions
  doc: 'anchor length for junctions (default: 10)'
  type: long?
  inputBinding:
    prefix: -a
- id: in_junction_coverage_default
  doc: 'junction coverage (default: 1)'
  type: long?
  inputBinding:
    prefix: -j
- id: in_trimming_predicted_transcripts
  doc: "trimming of predicted transcripts based on coverage\n(default: coverage trimming\
    \ is enabled)"
  type: string?
  inputBinding:
    prefix: -t
- id: in_reads_consider_multiexon
  doc: "reads per bp coverage to consider for multi-exon transcript\n(default: 1)"
  type: long?
  inputBinding:
    prefix: -c
- id: in_reads_consider_singleexon
  doc: "reads per bp coverage to consider for single-exon transcript\n(default: 4.75)"
  type: double?
  inputBinding:
    prefix: -s
- id: in_log_bundle_processing
  doc: (log bundle processing details)
  type: string?
  inputBinding:
    prefix: -v
- id: in_gap_allowed_read
  doc: 'gap allowed between read mappings (default: 50)'
  type: long?
  inputBinding:
    prefix: -g
- id: in_bundle_allowed_covered
  doc: of bundle allowed to be covered by multi-hit reads (default:1)
  type: long?
  inputBinding:
    prefix: -M
- id: in_threads_cpus_use
  doc: 'of threads (CPUs) to use (default: 1)'
  type: long?
  inputBinding:
    prefix: -p
- id: in_abundance_estimation_output
  doc: abundance estimation output file
  type: File?
  inputBinding:
    prefix: -A
- id: in_window_possibly_erroneous
  doc: "window around possibly erroneous splice sites from long reads to\nlook out\
    \ for correct splice sites (default: 25)"
  type: long?
  inputBinding:
    prefix: -E
- id: in_output_ballgown_o
  doc: "output of Ballgown table files which will be created in the\nsame directory\
    \ as the output GTF (requires -G, -o recommended)"
  type: Directory?
  inputBinding:
    prefix: -B
- id: in_output_ballgown_table
  doc: "output of Ballgown table files but these files will be\ncreated under the\
    \ directory path given as <dir_path>"
  type: File?
  inputBinding:
    prefix: -b
- id: in_estimate_abundance_requires
  doc: estimate the abundance of given reference transcripts (requires -G)
  type: string?
  inputBinding:
    prefix: -e
- id: in_viral
  doc: ": only relevant for long reads from viral data where splice sites\ndo not\
    \ follow consensus (default:false)"
  type: boolean?
  inputBinding:
    prefix: --viral
- id: in_assemble_transcripts_given
  doc: not assemble any transcripts on the given reference sequence(s)
  type: string?
  inputBinding:
    prefix: -x
- id: in_multimapping_correction_default
  doc: 'multi-mapping correction (default: correction enabled)'
  type: string?
  inputBinding:
    prefix: -u
- id: in_usage_message_exit
  doc: this usage message and exit
  type: string?
  inputBinding:
    prefix: -h
- id: in_minimum_input_transcript_fpkm
  doc: "minimum input transcript FPKM to include in the merge\n(default: 1.0)"
  type: long?
  inputBinding:
    prefix: -F
- id: in_minimum_input_transcript_include
  doc: "minimum input transcript TPM to include in the merge\n(default: 1.0)"
  type: double?
  inputBinding:
    prefix: -T
- id: in_keep_merged_transcripts
  doc: "keep merged transcripts with retained introns; by default\nthese are not kept\
    \ unless there is strong evidence for them"
  type: boolean?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_abundance_estimation_output
  doc: abundance estimation output file
  type: File?
  outputBinding:
    glob: $(inputs.in_abundance_estimation_output)
- id: out_output_ballgown_o
  doc: "output of Ballgown table files which will be created in the\nsame directory\
    \ as the output GTF (requires -G, -o recommended)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_ballgown_o)
- id: out_output_ballgown_table
  doc: "output of Ballgown table files but these files will be\ncreated under the\
    \ directory path given as <dir_path>"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_ballgown_table)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/stringtie:2.1.5--h7e0af3c_0
cwlVersion: v1.1
baseCommand:
- stringtie
