version 1.0

task ReseqIlluminaPE {
  input {
    Boolean? arg_number_used
    Int? verbosity
    File? adapter_file
    Int? adapter_matrix
    Boolean? arg_position_sorted
    Int? binsize_bias_fit
    Int? max_fra_glen
    Int? min_mapq
    Boolean? no_bias
    Boolean? no_tiles
    Boolean? arg_reference_sequences_bz
    Boolean? stats_only
    Boolean? arg_skips_statistics
    Boolean? arg_stores_real
    Boolean? tiles
    Boolean? arg_ignore_positions
    Int? ipf_iterations
    Int? ipf_precision
    Boolean? arg_loads_last
    Boolean? arg_stores_probabilities
    Boolean? stop_after_estimation
    Boolean? arg_writes_simulated_first_reads
    Boolean? arg_writes_simulated_second_reads
    Boolean? arg_approximate_average
    Int? error_mutli_plier
    File? methylation
    Boolean? no_indel_errors
    Boolean? no_substitution_errors
    File? read_sys_error
    String? record_base_identifier
    File? ref_bias
    File? ref_bias_file
    Boolean? arg_reference_sequences_fasta
    String? seed
    Boolean? arg_defines_genotypes
    File? write_sys_error
    String errors
  }
  command <<<
    reseq illuminaPE \
      ~{errors} \
      ~{if (arg_number_used) then "-j" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(adapter_file) then ("--adapterFile " +  '"' + adapter_file + '"') else ""} \
      ~{if defined(adapter_matrix) then ("--adapterMatrix " +  '"' + adapter_matrix + '"') else ""} \
      ~{if (arg_position_sorted) then "-b" else ""} \
      ~{if defined(binsize_bias_fit) then ("--binSizeBiasFit " +  '"' + binsize_bias_fit + '"') else ""} \
      ~{if defined(max_fra_glen) then ("--maxFragLen " +  '"' + max_fra_glen + '"') else ""} \
      ~{if defined(min_mapq) then ("--minMapQ " +  '"' + min_mapq + '"') else ""} \
      ~{if (no_bias) then "--noBias" else ""} \
      ~{if (no_tiles) then "--noTiles" else ""} \
      ~{if (arg_reference_sequences_bz) then "-r" else ""} \
      ~{if (stats_only) then "--statsOnly" else ""} \
      ~{if (arg_skips_statistics) then "-s" else ""} \
      ~{if (arg_stores_real) then "-S" else ""} \
      ~{if (tiles) then "--tiles" else ""} \
      ~{if (arg_ignore_positions) then "-v" else ""} \
      ~{if defined(ipf_iterations) then ("--ipfIterations " +  '"' + ipf_iterations + '"') else ""} \
      ~{if defined(ipf_precision) then ("--ipfPrecision " +  '"' + ipf_precision + '"') else ""} \
      ~{if (arg_loads_last) then "-p" else ""} \
      ~{if (arg_stores_probabilities) then "-P" else ""} \
      ~{if (stop_after_estimation) then "--stopAfterEstimation" else ""} \
      ~{if (arg_writes_simulated_first_reads) then "-1" else ""} \
      ~{if (arg_writes_simulated_second_reads) then "-2" else ""} \
      ~{if (arg_approximate_average) then "-c" else ""} \
      ~{if defined(error_mutli_plier) then ("--errorMutliplier " +  '"' + error_mutli_plier + '"') else ""} \
      ~{if defined(methylation) then ("--methylation " +  '"' + methylation + '"') else ""} \
      ~{if (no_indel_errors) then "--noInDelErrors" else ""} \
      ~{if (no_substitution_errors) then "--noSubstitutionErrors" else ""} \
      ~{if defined(read_sys_error) then ("--readSysError " +  '"' + read_sys_error + '"') else ""} \
      ~{if defined(record_base_identifier) then ("--recordBaseIdentifier " +  '"' + record_base_identifier + '"') else ""} \
      ~{if defined(ref_bias) then ("--refBias " +  '"' + ref_bias + '"') else ""} \
      ~{if defined(ref_bias_file) then ("--refBiasFile " +  '"' + ref_bias_file + '"') else ""} \
      ~{if (arg_reference_sequences_fasta) then "-R" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (arg_defines_genotypes) then "-V" else ""} \
      ~{if defined(write_sys_error) then ("--writeSysError " +  '"' + write_sys_error + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/reseq:1.1--py38h56fca86_0"
  }
  parameter_meta {
    arg_number_used: "[ --threads ] arg (=0)             Number of threads used (0=auto)"
    verbosity: "(=4)                  Sets the level of verbosity\\n(4=everything, 0=nothing)"
    adapter_file: "Fasta file with adapter sequences\\n[(AutoDetect)]"
    adapter_matrix: "0/1 matrix with valid adapter pairing\\n(first read in rows, second read in\\ncolumns) [(AutoDetect)]"
    arg_position_sorted: "[ --bamIn ] arg                    Position sorted bam/sam file with reads\\nmapped to refIn"
    binsize_bias_fit: "(=100000000)     Reference sequences large then this are\\nsplit for bias fitting to limit memory\\nconsumption"
    max_fra_glen: "(=2000)              Maximum fragment length to include\\npairs into statistics"
    min_mapq: "(=2)                    Minimum mapping quality to include\\npairs into statistics"
    no_bias: "Do not perform bias fit. Results in\\nuniform coverage if simulated from"
    no_tiles: "Ignore tiles for the statistics\\n[default]"
    arg_reference_sequences_bz: "[ --refIn ] arg                    Reference sequences in fasta format (gz\\nand bz2 supported)"
    stats_only: "Only generate the statistics"
    arg_skips_statistics: "[ --statsIn ] arg                  Skips statistics generation and reads\\ndirectly from stats file"
    arg_stores_real: "[ --statsOut ] arg                 Stores the real data statistics for\\nreuse in given file [<bamIn>.reseq]"
    tiles: "Use tiles for the statistics"
    arg_ignore_positions: "[ --vcfIn ] arg                    Ignore all positions with a listed\\nvariant for stats generation"
    ipf_iterations: "(=200)            Maximum number of iterations for\\niterative proportional fitting"
    ipf_precision: "(=5)               Iterative proportional fitting\\nprocedure stops after reaching this\\nprecision (%)"
    arg_loads_last: "[ --probabilitiesIn ] arg          Loads last estimated probabilities and\\ncontinues from there if precision is\\nnot met [<statsIn>.ipf]"
    arg_stores_probabilities: "[ --probabilitiesOut ] arg         Stores the probabilities estimated by\\niterative proportional fitting\\n[<probabilitiesIn>]"
    stop_after_estimation: "Stop after estimating the probabilities"
    arg_writes_simulated_first_reads: "[ --firstReadsOut ] arg            Writes the simulated first reads into\\nthis file [reseq-R1.fq]"
    arg_writes_simulated_second_reads: "[ --secondReadsOut ] arg           Writes the simulated second reads into\\nthis file [reseq-R2.fq]"
    arg_approximate_average: "[ --coverage ] arg (=0)            Approximate average read depth\\nsimulated (0 = Corrected original\\ncoverage)"
    error_mutli_plier: "(=1)            Divides the original probability of\\ncorrect base calls(no substitution\\nerror) by this value and renormalizes"
    methylation: "Extended bed graph file specifying\\nmethylation for regions. Multiple score\\ncolumns for individual alleles are\\npossible, but must match with vcfSim.\\nC->T conversions for 1-specified value\\nin region."
    no_indel_errors: "Simulate reads without InDel errors"
    no_substitution_errors: "Simulate reads without substitution"
    read_sys_error: "Read systematic errors from file in\\nfastq format (seq=dominant error,\\nqual=error percentage)"
    record_base_identifier: "(=ReseqRead)\\nBase Identifier for the simulated fastq\\nrecords, followed by a count and other\\ninformation about the read"
    ref_bias: "Way to select the reference biases for\\nsimulation (keep [from refIn]/no\\n[biases]/draw [with replacement from\\noriginal biases]/file) [keep/no]"
    ref_bias_file: "File to read reference biases from: One\\nsequence per file (identifier bias)"
    arg_reference_sequences_fasta: "[ --refSim ] arg                   Reference sequences in fasta format to\\nsimulate from [<refIn>]"
    seed: "Seed used for simulation, if none is\\ngiven random seed will be used"
    arg_defines_genotypes: "[ --vcfSim ] arg                   Defines genotypes to simulate alleles\\nor populations"
    write_sys_error: "Write the randomly drawn systematic\\nerrors to file in fastq format\\n(seq=dominant error, qual=error\\npercentage)\\n"
    errors: "--numReads arg (=0)                   Approximate number of read pairs "
  }
  output {
    File out_stdout = stdout()
  }
}