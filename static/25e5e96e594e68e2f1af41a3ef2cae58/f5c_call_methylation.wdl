version 1.0

task F5cCallmethylation {
  input {
    File? fastqfasta_read_file
    File? sorted_bam_file
    File? reference_genome
    String? limit_processing_genomic
    Int? number_processing_threads
    Int? batch_size_max
    Float? var_6
    File? output_to_file
    Int? parameter_profile_used
    Int? iop
    Int? min_mapq
    String? secondary
    Int? verbose
    File? skip_ultra
    Int? ultra_thresh
    Int? skip_unreadable
    File? km_er_model
    File? meth_model
    Int? meth_out_version
    String? print_events
    String? print_banded_aln
    String? print_scaling
    String? print_raw
    Int? debug_break
    String? profile_cpu
    File? write_dump
    File? read_dump
  }
  command <<<
    f5c call_methylation \
      ~{if defined(fastqfasta_read_file) then ("-r " +  '"' + fastqfasta_read_file + '"') else ""} \
      ~{if defined(sorted_bam_file) then ("-b " +  '"' + sorted_bam_file + '"') else ""} \
      ~{if defined(reference_genome) then ("-g " +  '"' + reference_genome + '"') else ""} \
      ~{if defined(limit_processing_genomic) then ("-w " +  '"' + limit_processing_genomic + '"') else ""} \
      ~{if defined(number_processing_threads) then ("-t " +  '"' + number_processing_threads + '"') else ""} \
      ~{if defined(batch_size_max) then ("-K " +  '"' + batch_size_max + '"') else ""} \
      ~{if defined(var_6) then ("-B " +  '"' + var_6 + '"') else ""} \
      ~{if defined(output_to_file) then ("-o " +  '"' + output_to_file + '"') else ""} \
      ~{if defined(parameter_profile_used) then ("-x " +  '"' + parameter_profile_used + '"') else ""} \
      ~{if defined(iop) then ("--iop " +  '"' + iop + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(secondary) then ("--secondary " +  '"' + secondary + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(skip_ultra) then ("--skip-ultra " +  '"' + skip_ultra + '"') else ""} \
      ~{if defined(ultra_thresh) then ("--ultra-thresh " +  '"' + ultra_thresh + '"') else ""} \
      ~{if defined(skip_unreadable) then ("--skip-unreadable " +  '"' + skip_unreadable + '"') else ""} \
      ~{if defined(km_er_model) then ("--kmer-model " +  '"' + km_er_model + '"') else ""} \
      ~{if defined(meth_model) then ("--meth-model " +  '"' + meth_model + '"') else ""} \
      ~{if defined(meth_out_version) then ("--meth-out-version " +  '"' + meth_out_version + '"') else ""} \
      ~{if defined(print_events) then ("--print-events " +  '"' + print_events + '"') else ""} \
      ~{if defined(print_banded_aln) then ("--print-banded-aln " +  '"' + print_banded_aln + '"') else ""} \
      ~{if defined(print_scaling) then ("--print-scaling " +  '"' + print_scaling + '"') else ""} \
      ~{if defined(print_raw) then ("--print-raw " +  '"' + print_raw + '"') else ""} \
      ~{if defined(debug_break) then ("--debug-break " +  '"' + debug_break + '"') else ""} \
      ~{if defined(profile_cpu) then ("--profile-cpu " +  '"' + profile_cpu + '"') else ""} \
      ~{if defined(write_dump) then ("--write-dump " +  '"' + write_dump + '"') else ""} \
      ~{if defined(read_dump) then ("--read-dump " +  '"' + read_dump + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/f5c:0.6--h8b6279f_0"
  }
  parameter_meta {
    fastqfasta_read_file: "fastq/fasta read file"
    sorted_bam_file: "sorted bam file"
    reference_genome: "reference genome"
    limit_processing_genomic: "limit processing to genomic region string of format chr:start-end"
    number_processing_threads: "number of processing threads [8]"
    batch_size_max: "batch size (max number of reads loaded at once) [512]"
    var_6: "[K/M/G]            max number of bases loaded at once [5.0M]"
    output_to_file: "output to file [stdout]"
    parameter_profile_used: "parameter profile to be used for better performance (always applied before other options)\\ne.g., laptop, desktop, hpc; see https://f5c.page.link/profiles for the full list"
    iop: "number of I/O processes to read fast5 files [1]"
    min_mapq: "minimum mapping quality [20]"
    secondary: "|no         consider secondary mappings or not [no]"
    verbose: "verbosity level [0]"
    skip_ultra: "skip ultra long reads and write those entries to the bam file provided as the argument"
    ultra_thresh: "threshold to skip ultra long reads [100000]"
    skip_unreadable: "|no   skip any unreadable fast5 or terminate program [yes]"
    km_er_model: "custom nucleotide k-mer model file (format similar to test/r9-models/r9.4_450bps.nucleotide.6mer.template.model)"
    meth_model: "custom methylation k-mer model file (format similar to test/r9-models/r9.4_450bps.cpg.6mer.template.model)"
    meth_out_version: "methylation tsv output version (set 2 to print the strand column) [1]"
    print_events: "|no      prints the event table"
    print_banded_aln: "|no  prints the event alignment"
    print_scaling: "|no     prints the estimated scalings"
    print_raw: "|no         prints the raw signal"
    debug_break: "break after processing the specified no. of batches"
    profile_cpu: "|no       process section by section (used for profiling on CPU)"
    write_dump: "|no        write the fast5 dump to a file or not"
    read_dump: "|no         read from a fast5 dump file or not"
  }
  output {
    File out_stdout = stdout()
    File out_output_to_file = "${in_output_to_file}"
  }
}