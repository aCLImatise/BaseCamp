class: CommandLineTool
id: epic2.cwl
inputs:
- id: in_treatment
  doc: "Treatment (pull-down) file(s) in one of these formats:\nbed, bedpe, bed.gz,\
    \ bedpe.gz or (single-end) bam, sam.\nThe --guess-bampe flag enables optional\
    \ support for\n(paired-end) bampe and sampe formats. Mixing file\nformats is allowed."
  type: string[]
  inputBinding:
    prefix: --treatment
- id: in_control
  doc: "Control (input) file(s) in one of these formats: bed,\nbedpe, bed.gz, bedpe.gz\
    \ or (single-end) bam, sam. The\n--guess-bampe flag enables optional support for\n\
    (paired-end) bampe and sampe formats. Mixing file\nformats is allowed."
  type: string[]
  inputBinding:
    prefix: --control
- id: in_genome
  doc: "Which genome to analyze. Default: hg19. If\n--chromsizes and --egf flag is\
    \ given, --genome is not\nrequired."
  type: long?
  inputBinding:
    prefix: --genome
- id: in_keep_duplicates
  doc: "Keep reads mapping to the same position on the same\nstrand within a library.\
    \ Default: False."
  type: boolean?
  inputBinding:
    prefix: --keep-duplicates
- id: in_original_algorithm
  doc: "Use the original SICER algorithm, without the epic2\nfix. This will use all\
    \ reads in your files to compute\nthe p-values, including those falling outside\
    \ the\ngenome boundaries."
  type: boolean?
  inputBinding:
    prefix: --original-algorithm
- id: in_bin_size
  doc: "Size of the windows to scan the genome. BIN-SIZE is\nthe smallest possible\
    \ island. Default 200."
  type: long?
  inputBinding:
    prefix: --bin-size
- id: in_gaps_allowed
  doc: "This number is multiplied by the window size to\ndetermine the number of gaps\
    \ (ineligible windows)\nallowed between two eligible windows. Must be an\ninteger.\
    \ Default: 3."
  type: long?
  inputBinding:
    prefix: --gaps-allowed
- id: in_fragment_size
  doc: "(Single end reads only) Size of the sequenced\nfragment. Each read is extended\
    \ half the fragment size\nfrom the 5' end. Default 150 (i.e. extend by 75)."
  type: long?
  inputBinding:
    prefix: --fragment-size
- id: in_false_discovery_rate_cut_off
  doc: "Remove all islands with an FDR above cutoff. Default\n0.05."
  type: double?
  inputBinding:
    prefix: --false-discovery-rate-cutoff
- id: in_effective_genome_fraction
  doc: "Use a different effective genome fraction than the one\nincluded in epic2.\
    \ The default value depends on the\ngenome and readlength, but is a number between\
    \ 0 and\n1."
  type: long?
  inputBinding:
    prefix: --effective-genome-fraction
- id: in_chrom_sizes
  doc: "Set the chromosome lengths yourself in a file with two\ncolumns: chromosome\
    \ names and sizes. Useful to analyze\ncustom genomes, assemblies or simulated\
    \ data. Only\nchromosomes included in the file will be analyzed."
  type: File?
  inputBinding:
    prefix: --chromsizes
- id: in_e_value
  doc: "The E-value controls the genome-wide error rate of\nidentified islands under\
    \ the random background\nassumption. Should be used when not using a control\n\
    library. Default: 1000."
  type: long?
  inputBinding:
    prefix: --e-value
- id: in_required_flag
  doc: "(bampe/bam only.) Keep reads with these bits set in\nflag. Same as `samtools\
    \ view -f`. Default 0"
  type: long?
  inputBinding:
    prefix: --required-flag
- id: in_filter_flag
  doc: "(bampe/bam only.) Discard reads with these bits set in\nflag. Same as `samtools\
    \ view -F`. Default 1540 (hex:\n0x604). See\nhttps://broadinstitute.github.io/picard/explain-\n\
    flags.html for more info."
  type: long?
  inputBinding:
    prefix: --filter-flag
- id: in_mapq
  doc: "(bampe/bam only.) Discard reads with mapping quality\nlower than this. Default\
    \ 5."
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_autodetect_chrom_s
  doc: "(bampe/bam only.) Autodetect chromosomes from bam\nfile. Use with --discard-chromosomes\
    \ flag to avoid\nnon-canonical chromosomes."
  type: boolean?
  inputBinding:
    prefix: --autodetect-chroms
- id: in_discard_chromosomes_pattern
  doc: "(bampe/bam only.) Discard reads from chromosomes\nmatching this pattern. Default\
    \ '_'. Note that if you\nare not interested in the results from non-canonical\n\
    chromosomes, you should ensure they are removed with\nthis flag, otherwise they\
    \ will make the statistical\nanalysis too stringent."
  type: string?
  inputBinding:
    prefix: --discard-chromosomes-pattern
- id: in_output
  doc: 'File to write results to. Default: stdout.'
  type: File?
  inputBinding:
    prefix: --output
- id: in_original_statistics
  doc: "Use the original SICER way of computing the\nstatistics. Like SICER itself,\
    \ this method raises an\nerror on large datasets. Only included for debugging-\n\
    purposes."
  type: boolean?
  inputBinding:
    prefix: --original-statistics
- id: in_guess_bam_pe
  doc: "Autodetect bampe file format based on flags from the\nfirst 100 reads. If\
    \ all of them are paired, then the\nformat is bampe. Only properly paired reads\
    \ are\nprocessed by default (0x1 and 0x2 samtools flags)."
  type: boolean?
  inputBinding:
    prefix: --guess-bampe
- id: in_quiet
  doc: Do not write output messages to stderr.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_example
  doc: Show the paths of the example data and an example
  type: boolean?
  inputBinding:
    prefix: --example
- id: in_command_dot
  doc: --version, -v         show program's version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/epic2:0.0.48--py37hd0e48df_0
cwlVersion: v1.1
baseCommand:
- epic2
