version 1.0

task Bactopia {
  input {
    File? fast_qs
    Int? r_one
    Int? r_two
    String? se
    Boolean? hybrid
    String? sample
    Boolean? accessions
    Boolean? accession
    String? assembly
    Boolean? reassemble
    File? datasets
    String? species
    Int? coverage
    Int? genome_size
    Directory? outdir
    Int? max_time
    Int? max_memory
    Int? cpus
    Directory? infodir
    Directory? cond_a_dir
    File? nf_config
    Boolean? nf_dir
    Boolean? overwrite
    Boolean? con_a_tainer_path
    Boolean? sleep_time
    File? publish_mode
    Boolean? force
    Boolean? resume
    Boolean? available_datasets
    Boolean? example_fast_qs
    Boolean? check_fast_qs
    Boolean? compress
    Boolean? keep_all_files
    Boolean? dry_run
    Boolean? help_all
    String profile_dot
  }
  command <<<
    bactopia \
      ~{profile_dot} \
      ~{if defined(fast_qs) then ("--fastqs " +  '"' + fast_qs + '"') else ""} \
      ~{if defined(r_one) then ("--R1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--R2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(se) then ("--SE " +  '"' + se + '"') else ""} \
      ~{if (hybrid) then "--hybrid" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (accessions) then "--accessions" else ""} \
      ~{if (accession) then "--accession" else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if (reassemble) then "--reassemble" else ""} \
      ~{if defined(datasets) then ("--datasets " +  '"' + datasets + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(genome_size) then ("--genome_size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(max_time) then ("--max_time " +  '"' + max_time + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(infodir) then ("--infodir " +  '"' + infodir + '"') else ""} \
      ~{if defined(cond_a_dir) then ("--condadir " +  '"' + cond_a_dir + '"') else ""} \
      ~{if defined(nf_config) then ("--nfconfig " +  '"' + nf_config + '"') else ""} \
      ~{if (nf_dir) then "--nfdir" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (con_a_tainer_path) then "--conatainerPath" else ""} \
      ~{if (sleep_time) then "--sleep_time" else ""} \
      ~{if (publish_mode) then "--publish_mode" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (resume) then "-resume" else ""} \
      ~{if (available_datasets) then "--available_datasets" else ""} \
      ~{if (example_fast_qs) then "--example_fastqs" else ""} \
      ~{if (check_fast_qs) then "--check_fastqs" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (keep_all_files) then "--keep_all_files" else ""} \
      ~{if (dry_run) then "--dry_run" else ""} \
      ~{if (help_all) then "--help_all" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_qs: "An input file containing the sample name and\\nabsolute paths to FASTQ/FASTAs to process"
    r_one: "First set of reads for paired end in compressed (gzip)\\nFASTQ format"
    r_two: "Second set of reads for paired end in compressed (gzip)\\nFASTQ format"
    se: "Single end set of reads in compressed (gzip) FASTQ format"
    hybrid: "The SE should be treated as long reads for hybrid assembly."
    sample: "The name of the input sequences"
    accessions: "An input file containing ENA/SRA Experiment accessions or\\nNCBI Assembly accessions to be processed"
    accession: "A single ENA/SRA Experiment accession or NCBI Assembly accession\\nto be processed"
    assembly: "A assembled genome in compressed FASTA format."
    reassemble: "The simulated reads will be used to create a new assembly.\\nDefault: Use the original assembly, do not reassemble"
    datasets: "The path to available datasets that have\\nalready been set up"
    species: "Determines which species-specific dataset to\\nuse for the input sequencing"
    coverage: "Reduce samples to a given coverage\\nDefault: 100x"
    genome_size: "Expected genome size (bp) for all samples, a value of '0'\\nwill disable read error correction and read subsampling.\\nSpecial values (requires --species):\\n'min': uses minimum completed genome size of species\\n'median': uses median completed genome size of species\\n'mean': uses mean completed genome size of species\\n'max': uses max completed genome size of species\\nDefault: Mash estimate"
    outdir: "Directory to write results to\\nDefault: ."
    max_time: "The maximum number of minutes a single task should run before being halted.\\nDefault: 240 minutes"
    max_memory: "The maximum amount of memory (Gb) allowed to a single task.\\nDefault: 64 Gb"
    cpus: "Number of processors made available to a single task.\\nDefault: 4"
    infodir: "Directory to write Nextflow summary files to\\nDefault: ./bactopia-info"
    cond_a_dir: "Directory to Nextflow should use for Conda environments\\nDefault: Bactopia's Nextflow directory"
    nf_config: "A Nextflow compatible config file for custom profiles. This allows\\nyou to create profiles specific to your environment (e.g. SGE,\\nAWS, SLURM, etc...). This config file is loaded last and will\\noverwrite existing variables if set.\\nDefault: Bactopia's default configs"
    nf_dir: "Print directory Nextflow has pulled Bactopia to"
    overwrite: "Nextflow will overwrite existing output files.\\nDefault: false"
    con_a_tainer_path: "Path to Singularity containers to be used by the 'slurm'"
    sleep_time: "After reading datases, the amount of time (seconds) Nextflow\\nwill wait before execution.\\nDefault: 5 seconds"
    publish_mode: "Set Nextflow's method for publishing output files. Allowed methods are:\\n'copy' (default)    Copies the output files into the published directory.\\n'copyNoFollow' Copies the output files into the published directory\\nwithout following symlinks ie. copies the links themselves.\\n'link'    Creates a hard link in the published directory for each\\nprocess output file.\\n'rellink' Creates a relative symbolic link in the published directory\\nfor each process output file.\\n'symlink' Creates an absolute symbolic link in the published directory\\nfor each process output file.\\nDefault: copy"
    force: "Nextflow will overwrite existing output files.\\nDefault: false"
    resume: "Nextflow will attempt to resume a previous run. Please notice it is\\nonly a single '-'"
    available_datasets: "Print a list of available datasets found based\\non location given by \\\"--datasets\\\""
    example_fast_qs: "Print example of expected input for FASTQs file"
    check_fast_qs: "Verify \\\"--fastqs\\\" produces the expected inputs"
    compress: "Compress (gzip) select outputs (e.g. annotation, variant calls)\\nto reduce overall storage footprint."
    keep_all_files: "Keeps all analysis files created. By default, intermediate\\nfiles are removed. This will not affect the ability\\nto resume Nextflow runs, and only occurs at the end\\nof the process."
    dry_run: "Mimics workflow execution, to help determine if conda environments\\nor container images are properly set up."
    help_all: "Show a complete list of adjustable parameters"
    profile_dot: "Default: /opt/bactopia/singularity"
  }
  output {
    File out_stdout = stdout()
    File out_publish_mode = "${in_publish_mode}"
  }
}