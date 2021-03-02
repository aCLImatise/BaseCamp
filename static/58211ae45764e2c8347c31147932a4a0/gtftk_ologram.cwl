class: CommandLineTool
id: gtftk_ologram.cwl
inputs:
- id: in_multiple_overlap_target_combi_size
  doc: 'Maximum number of sets in the output combinations. Default to -1 meaning no
    max number. Set it to number of --more-bed +1 to get exact (exclusive) combinations
    (default: -1)'
  type: boolean?
  inputBinding:
    prefix: --multiple-overlap-target-combi-size
- id: in_multiple_overlap_max_number_of_combinations
  doc: 'Maximum number of combinations to consider by applying the MODL algorithm
    to the matrix of full overlaps. Defaults to -1, which means MODL is NOT applied
    and all combinations are returned (default: -1)'
  type: boolean?
  inputBinding:
    prefix: --multiple-overlap-max-number-of-combinations
- id: in_input_file
  doc: 'Path to the GTF file. Defaults to STDIN (default: <stdin>)'
  type: boolean?
  inputBinding:
    prefix: --inputfile
- id: in_chrom_info
  doc: 'Tabulated two-columns file. Chromosomes as column 1, sizes as column 2 (default:
    None)'
  type: boolean?
  inputBinding:
    prefix: --chrom-info
- id: in_peak_file
  doc: 'The file containing the peaks/regions to be annotated. (bed format). (default:
    None)'
  type: boolean?
  inputBinding:
    prefix: --peak-file
- id: in_more_bed
  doc: 'A list of bed files to be considered as additional genomic annotations. (default:
    None)'
  type: boolean?
  inputBinding:
    prefix: --more-bed
- id: in_more_bed_labels
  doc: 'A comma separated list of labels (see --more-bed). Optional. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --more-bed-labels
- id: in_bed_excl
  doc: 'Exclusion file. The chromosomes will be shortened by this much for the shuffles
    of peaks and features. (bed format). (default: None)'
  type: boolean?
  inputBinding:
    prefix: --bed-excl
- id: in_bed_incl
  doc: 'Opposite of --bed-excl, will perform the same operation but keep only those
    regions. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --bed-incl
- id: in_upstream
  doc: "Extend the TSS and TTS of in 5' by a given value. (default: 1000)"
  type: boolean?
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: "Extend the TSS and TTS of in 3' by a given value. (default: 1000)"
  type: boolean?
  inputBinding:
    prefix: --downstream
- id: in_more_keys
  doc: 'A comma separated list of key used for labeling the genome. See Notes. (default:
    None)'
  type: boolean?
  inputBinding:
    prefix: --more-keys
- id: in_no_basic_feature
  doc: 'No statistics for basic features of GTF. Concentrates on --more-bed and --more-keys.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-basic-feature
- id: in_more_bed_multiple_overlap
  doc: 'The more-beds specified will be considered all at once for multiple overlaps.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --more-bed-multiple-overlap
- id: in_multiple_overlap_custom_combis
  doc: "Path to a text ('*.txt') file that will be read as a NumPy matrix, overriding\
    \ the combinations to be studied. See notes for the format of the text file. (default:\
    \ None)"
  type: boolean?
  inputBinding:
    prefix: --multiple-overlap-custom-combis
- id: in_nb_threads
  doc: 'Number of threads for multiprocessing. (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --nb-threads
- id: in_seed
  doc: 'Numpy random seed. (default: 42)'
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_mini_batch_nb
  doc: 'Number of minibatches of shuffles. (default: 10)'
  type: boolean?
  inputBinding:
    prefix: --minibatch-nb
- id: in_mini_batch_size
  doc: 'Size of each minibatch, in number of shuffles. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --minibatch-size
- id: in_use_markov
  doc: 'Whether to use Markov model realisations (order 2) instead of independant
    shuffles. See notes. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --use-markov
- id: in_output_dir
  doc: 'Output directory name. (default: ologram_output)'
  type: Directory?
  inputBinding:
    prefix: --outputdir
- id: in_pdf_width
  doc: 'Output pdf file width (inches). (default: None)'
  type: File?
  inputBinding:
    prefix: --pdf-width
- id: in_pdf_height
  doc: 'Output pdf file height (inches). (default: None)'
  type: File?
  inputBinding:
    prefix: --pdf-height
- id: in_pdf_file_alt
  doc: 'Provide an alternative path for the main image. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --pdf-file-alt
- id: in_no_pdf
  doc: 'Do not produce any image file. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-pdf
- id: in_display_fit_quality
  doc: 'Display the negative binomial fit quality on the diagrams. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --display-fit-quality
- id: in_tsv_file_path
  doc: 'Provide an alternative path for text output file. (default: None)'
  type: File?
  inputBinding:
    prefix: --tsv-file-path
- id: in_sort_features
  doc: 'Whether to sort features in diagrams according to a computed statistic. (default:
    summed_bp_overlaps_true)'
  type: boolean?
  inputBinding:
    prefix: --sort-features
- id: in_no_gtf
  doc: 'No GTF file is provided as input. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-gtf
- id: in_force_chrom_gtf
  doc: 'Discard silently, from GTF, genes outside chromosomes defined in --chrom-info.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --force-chrom-gtf
- id: in_force_chrom_peak
  doc: 'Discard silently, from --peak-file, peaks outside chromosomes defined in --chrom-info.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --force-chrom-peak
- id: in_force_chrom_more_bed
  doc: 'Discard silently, from --more-bed files, regions outside chromosomes defined
    in --chrom-info. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --force-chrom-more-bed
- id: in_verbosity
  doc: 'Set output verbosity ([0-3]). (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  inputBinding:
    prefix: --no-date
- id: in_add_chr
  doc: "Add 'chr' to chromosome names before printing output. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --add-chr
- id: in_tmp_dir
  doc: 'Keep all temporary files into this folder. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_all
  doc: 'Try to keep all temporary files even if process does not terminate normally.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-all
- id: in_logger_file
  doc: 'Stores the arguments passed to the command into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --logger-file
- id: in_write_message_to_file
  doc: 'Store all message into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --write-message-to-file
- id: in_the
  doc: '*  more-bed arguments to look for enrichment in overlaps for custom annotations.'
  type: string
  inputBinding:
    position: 0
- id: in_used_dot
  doc: "*  The program produces a pdf file and a tsv file ('_stats_') containing intersection"
  type: string
  inputBinding:
    position: 0
- id: in_regions_dot
  doc: '*  You can exclude regions from the shuffling. This is done by shuffling across
    a concatenated'
  type: string
  inputBinding:
    position: 0
- id: in_values_dot
  doc: This is especially true for small regions such as Transcriptional Regulator
    biding
  type: string
  inputBinding:
    position: 0
- id: in_studying
  doc: Transcriptional Regulators, shuffling only on inferred Cis Regulatory Modules
    or
  type: string
  inputBinding:
    position: 0
- id: in_ram_dot
  doc: If you nevertheless need to use many shuffles, look to the ologram_merge_run
    plugin.
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: 'Arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Output directory name. (default: ologram_output)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_pdf_width
  doc: 'Output pdf file width (inches). (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_pdf_width)
- id: out_pdf_height
  doc: 'Output pdf file height (inches). (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_pdf_height)
- id: out_tsv_file_path
  doc: 'Provide an alternative path for text output file. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_tsv_file_path)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_no_date)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pygtftk:1.2.7--py36h4edd4cd_1
cwlVersion: v1.1
baseCommand:
- gtftk
- ologram
