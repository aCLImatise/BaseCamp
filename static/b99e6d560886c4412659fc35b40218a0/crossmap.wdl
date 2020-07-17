version 1.0

task Crossmap {
  input {
    String? kmer_length_generate
    String? offset
    String? mismatches
    String? bowtie
    Boolean? have_km_ers
    Boolean? save_km_ers
    String? processes
    Boolean? quiet
    Boolean? verbose
    String? sequence_format
    String out_base_read_length_mismatches_crossmap_dot_bed
    String out_base_read_length_mismatches_chromosome_km_ers_dot_fa
    String e_bwt
    String out_base
  }
  command <<<
    crossmap \
      ~{out_base_read_length_mismatches_crossmap_dot_bed} \
      ~{out_base_read_length_mismatches_chromosome_km_ers_dot_fa} \
      ~{e_bwt} \
      ~{out_base} \
      ~{if defined(kmer_length_generate) then ("-k " +  '"' + kmer_length_generate + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(bowtie) then ("--bowtie " +  '"' + bowtie + '"') else ""} \
      ~{true="--have_kmers" false="" have_km_ers} \
      ~{true="--save_kmers" false="" save_km_ers} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(sequence_format) then ("--sequence_format " +  '"' + sequence_format + '"') else ""}
  >>>
  parameter_meta {
    kmer_length_generate: "K-mer length to generate from input file. (Default: 29)"
    offset: "Offset from 5' end of plus-strand read at which to attribute score (Default: 14)"
    mismatches: "Number of mismatches tolerated in alignment. (Default: 0)"
    bowtie: "Location of bowtie binary (Default: ``/usr/local/bin/bowtie``)"
    have_km_ers: "If specified, use k-mer files from previous run. In this case 'sequence_file' should be the value 'outbase' from the k-mer files you want to use."
    save_km_ers: "Save k-mer files for reuse in a subsequent run."
    processes: "Number of processes to use (should be <= number of chromosomes"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
    sequence_format: "Format of sequence_file (Default: fasta)."
    out_base_read_length_mismatches_crossmap_dot_bed: "Final mask file annotation, in BED format"
    out_base_read_length_mismatches_chromosome_km_ers_dot_fa: "K-mers derived from chromosome `CHROMOSOME`. These files can be reused in subsequent runs allowing a different number of mismatches, using the ``--have_kmers`` option"
    e_bwt: "Bowtie index of genome against which crossmap will be made. In most cases, should be generated from the same sequences that are in `sequence_file`."
    out_base: "Basename for output files"
  }
}