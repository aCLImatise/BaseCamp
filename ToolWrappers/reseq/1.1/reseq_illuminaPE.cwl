class: CommandLineTool
id: reseq_illuminaPE.cwl
inputs:
- id: in_arg_number_used
  doc: '[ --threads ] arg (=0)             Number of threads used (0=auto)'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_verbosity
  doc: "(=4)                  Sets the level of verbosity\n(4=everything, 0=nothing)"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_adapter_file
  doc: "Fasta file with adapter sequences\n[(AutoDetect)]"
  type: File?
  inputBinding:
    prefix: --adapterFile
- id: in_adapter_matrix
  doc: "0/1 matrix with valid adapter pairing\n(first read in rows, second read in\n\
    columns) [(AutoDetect)]"
  type: long?
  inputBinding:
    prefix: --adapterMatrix
- id: in_arg_position_sorted
  doc: "[ --bamIn ] arg                    Position sorted bam/sam file with reads\n\
    mapped to refIn"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_binsize_bias_fit
  doc: "(=100000000)     Reference sequences large then this are\nsplit for bias fitting\
    \ to limit memory\nconsumption"
  type: long?
  inputBinding:
    prefix: --binSizeBiasFit
- id: in_max_fra_glen
  doc: "(=2000)              Maximum fragment length to include\npairs into statistics"
  type: long?
  inputBinding:
    prefix: --maxFragLen
- id: in_min_mapq
  doc: "(=2)                    Minimum mapping quality to include\npairs into statistics"
  type: long?
  inputBinding:
    prefix: --minMapQ
- id: in_no_bias
  doc: "Do not perform bias fit. Results in\nuniform coverage if simulated from"
  type: boolean?
  inputBinding:
    prefix: --noBias
- id: in_no_tiles
  doc: "Ignore tiles for the statistics\n[default]"
  type: boolean?
  inputBinding:
    prefix: --noTiles
- id: in_arg_reference_sequences_bz
  doc: "[ --refIn ] arg                    Reference sequences in fasta format (gz\n\
    and bz2 supported)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_stats_only
  doc: Only generate the statistics
  type: boolean?
  inputBinding:
    prefix: --statsOnly
- id: in_arg_skips_statistics
  doc: "[ --statsIn ] arg                  Skips statistics generation and reads\n\
    directly from stats file"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_stores_real
  doc: "[ --statsOut ] arg                 Stores the real data statistics for\nreuse\
    \ in given file [<bamIn>.reseq]"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_tiles
  doc: Use tiles for the statistics
  type: boolean?
  inputBinding:
    prefix: --tiles
- id: in_arg_ignore_positions
  doc: "[ --vcfIn ] arg                    Ignore all positions with a listed\nvariant\
    \ for stats generation"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_ipf_iterations
  doc: "(=200)            Maximum number of iterations for\niterative proportional\
    \ fitting"
  type: long?
  inputBinding:
    prefix: --ipfIterations
- id: in_ipf_precision
  doc: "(=5)               Iterative proportional fitting\nprocedure stops after reaching\
    \ this\nprecision (%)"
  type: long?
  inputBinding:
    prefix: --ipfPrecision
- id: in_arg_loads_last
  doc: "[ --probabilitiesIn ] arg          Loads last estimated probabilities and\n\
    continues from there if precision is\nnot met [<statsIn>.ipf]"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_stores_probabilities
  doc: "[ --probabilitiesOut ] arg         Stores the probabilities estimated by\n\
    iterative proportional fitting\n[<probabilitiesIn>]"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_stop_after_estimation
  doc: Stop after estimating the probabilities
  type: boolean?
  inputBinding:
    prefix: --stopAfterEstimation
- id: in_arg_writes_simulated_first_reads
  doc: "[ --firstReadsOut ] arg            Writes the simulated first reads into\n\
    this file [reseq-R1.fq]"
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_arg_writes_simulated_second_reads
  doc: "[ --secondReadsOut ] arg           Writes the simulated second reads into\n\
    this file [reseq-R2.fq]"
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_arg_approximate_average
  doc: "[ --coverage ] arg (=0)            Approximate average read depth\nsimulated\
    \ (0 = Corrected original\ncoverage)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_error_mutli_plier
  doc: "(=1)            Divides the original probability of\ncorrect base calls(no\
    \ substitution\nerror) by this value and renormalizes"
  type: long?
  inputBinding:
    prefix: --errorMutliplier
- id: in_methylation
  doc: "Extended bed graph file specifying\nmethylation for regions. Multiple score\n\
    columns for individual alleles are\npossible, but must match with vcfSim.\nC->T\
    \ conversions for 1-specified value\nin region."
  type: File?
  inputBinding:
    prefix: --methylation
- id: in_no_indel_errors
  doc: Simulate reads without InDel errors
  type: boolean?
  inputBinding:
    prefix: --noInDelErrors
- id: in_no_substitution_errors
  doc: Simulate reads without substitution
  type: boolean?
  inputBinding:
    prefix: --noSubstitutionErrors
- id: in_read_sys_error
  doc: "Read systematic errors from file in\nfastq format (seq=dominant error,\nqual=error\
    \ percentage)"
  type: File?
  inputBinding:
    prefix: --readSysError
- id: in_record_base_identifier
  doc: "(=ReseqRead)\nBase Identifier for the simulated fastq\nrecords, followed by\
    \ a count and other\ninformation about the read"
  type: string?
  inputBinding:
    prefix: --recordBaseIdentifier
- id: in_ref_bias
  doc: "Way to select the reference biases for\nsimulation (keep [from refIn]/no\n\
    [biases]/draw [with replacement from\noriginal biases]/file) [keep/no]"
  type: File?
  inputBinding:
    prefix: --refBias
- id: in_ref_bias_file
  doc: "File to read reference biases from: One\nsequence per file (identifier bias)"
  type: File?
  inputBinding:
    prefix: --refBiasFile
- id: in_arg_reference_sequences_fasta
  doc: "[ --refSim ] arg                   Reference sequences in fasta format to\n\
    simulate from [<refIn>]"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_seed
  doc: "Seed used for simulation, if none is\ngiven random seed will be used"
  type: string?
  inputBinding:
    prefix: --seed
- id: in_arg_defines_genotypes
  doc: "[ --vcfSim ] arg                   Defines genotypes to simulate alleles\n\
    or populations"
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_write_sys_error
  doc: "Write the randomly drawn systematic\nerrors to file in fastq format\n(seq=dominant\
    \ error, qual=error\npercentage)\n"
  type: File?
  inputBinding:
    prefix: --writeSysError
- id: in_errors
  doc: '--numReads arg (=0)                   Approximate number of read pairs '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/reseq:1.1--py38h56fca86_0
cwlVersion: v1.1
baseCommand:
- reseq
- illuminaPE
