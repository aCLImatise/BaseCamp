version 1.0

task HicstuffPipeline {
  input {
    Int? aligner
    File? centromeres
    Boolean? circular
    Boolean? distance_law
    Boolean? duplicates
    Boolean? filter
    File? force
    Boolean? iterative
    File? genome
    Int? mat_fmt
    Boolean? no_cleanup
    Directory? outdir
    String? prefix
    Int? quality_min
    Int? remove_centromeres
    Int? read_len
    Int? size
    File? start_stage
    Int? threads
    Directory? tmpdir
    Boolean? p
    Boolean? e
    String positions_dot
    Directory directory_dot
  }
  command <<<
    hicstuff pipeline \
      ~{positions_dot} \
      ~{directory_dot} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(centromeres) then ("--centromeres " +  '"' + centromeres + '"') else ""} \
      ~{if (circular) then "--circular" else ""} \
      ~{if (distance_law) then "--distance-law" else ""} \
      ~{if (duplicates) then "--duplicates" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (iterative) then "--iterative" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(mat_fmt) then ("--matfmt " +  '"' + mat_fmt + '"') else ""} \
      ~{if (no_cleanup) then "--no-cleanup" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(quality_min) then ("--quality-min " +  '"' + quality_min + '"') else ""} \
      ~{if defined(remove_centromeres) then ("--remove-centromeres " +  '"' + remove_centromeres + '"') else ""} \
      ~{if defined(read_len) then ("--read-len " +  '"' + read_len + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(start_stage) then ("--start-stage " +  '"' + start_stage + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if (p) then "-p" else ""} \
      ~{if (e) then "-e" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    aligner: "Alignment software to use. Can be either\\nbowtie2, minimap2 or bwa. minimap2 should\\nonly be used for reads > 100 bp.\\n[default: bowtie2]"
    centromeres: "Positions of the centromeres separated by\\na space and in the same order than the\\nchromosomes. Discordant with the circular\\noption."
    circular: "Enable if the genome is circular.\\nDiscordant with the centromeres option."
    distance_law: "If enabled, generates a distance law file\\nwith the values of the probabilities to\\nhave a contact between two distances for\\neach chromosomes or arms if the file with\\nthe positions has been given. The values\\nare not normalized, or averaged."
    duplicates: "Filter out PCR duplicates based on read"
    filter: "Filter out spurious 3C events (loops and\\nuncuts) using hicstuff filter. Requires\\n\\\"-e\\\" to be a restriction enzyme, not a\\nchunk size. For more informations, see\\nCournac et al. BMC Genomics, 2012."
    force: "Write even if the output file already exists."
    iterative: "Map reads iteratively using hicstuff\\niteralign, by truncating reads to 20bp\\nand then repeatedly extending and\\naligning them."
    genome: "Reference genome to map against. Path to\\nthe bowtie2/bwa index if using bowtie2/bwa,\\nor to a FASTA file if using minimap2."
    mat_fmt: "The format of the output sparse matrix.\\nCan be \\\"bg2\\\" for 2D Bedgraph format,\\n\\\"cool\\\" for Mirnylab's cooler software, or\\n\\\"graal\\\" for graal-compatible plain text\\nCOO format. [default: graal]"
    no_cleanup: "If enabled, intermediary BED files will\\nbe kept after generating the contact map.\\nDisabled by defaut."
    outdir: "Output directory. Defaults to the current"
    prefix: "Overrides default filenames and prefixes all\\noutput files with a custom name."
    quality_min: "Minimum mapping quality for selecting\\ncontacts. [default: 30]."
    remove_centromeres: "Integer. Number of kb that will be remove around\\nthe centromere position given by in the centromere\\nfile. [default: 0]"
    read_len: "Maximum read length in the fastq file. Optionally\\nused in iterative alignment mode. Estimated from\\nthe first read by default. Useful if input fastq\\nis a composite of different read lengths."
    size: "Minimum size threshold to consider\\ncontigs. Keep all contigs by default.\\n[default: 0]"
    start_stage: "Define the starting point of the pipeline\\nto skip some steps. Default is \\\"fastq\\\" to\\nrun from the start. Can also be \\\"bam\\\" to\\nskip the alignment, \\\"pairs\\\" to start from a\\nsingle pairs file or \\\"pairs_idx\\\" to skip\\nfragment attribution and only build the\\nmatrix. [default: fastq]"
    threads: "Number of threads to allocate.\\n[default: 1]."
    tmpdir: "Directory for storing intermediary BED\\nfiles and temporary sort files. Defaults\\nto the output directory."
    p: ""
    e: ""
    positions_dot: "-e, --enzyme=ENZ              Restriction enzyme if a string, or chunk"
    directory_dot: "-p, --plot                    Generates plots in the output directory"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
    Directory out_outdir = "${in_outdir}"
    Directory out_tmpdir = "${in_tmpdir}"
  }
}