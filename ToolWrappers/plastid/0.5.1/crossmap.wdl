version 1.0

task Crossmap {
  input {
    Int? kmer_length_generate
    Int? offset
    Int? mismatches
    String? bowtie
    Boolean? have_km_ers
    Boolean? save_km_ers
    Int? processes
    Boolean? quiet
    Boolean? verbose
    File? sequence_file
    String? sequence_format
    String out_base_read_length_mismatches_crossmap_dot_bed
    String out_base_read_length_mismatches_chromosome_km_ers_dot_fa
    String sequence
    String e_bwt
    String out_base
    String chromosomes
  }
  command <<<
    crossmap \
      ~{out_base_read_length_mismatches_crossmap_dot_bed} \
      ~{out_base_read_length_mismatches_chromosome_km_ers_dot_fa} \
      ~{sequence} \
      ~{e_bwt} \
      ~{out_base} \
      ~{chromosomes} \
      ~{if defined(kmer_length_generate) then ("-k " +  '"' + kmer_length_generate + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(bowtie) then ("--bowtie " +  '"' + bowtie + '"') else ""} \
      ~{if (have_km_ers) then "--have_kmers" else ""} \
      ~{if (save_km_ers) then "--save_kmers" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(sequence_file) then ("--sequence_file " +  '"' + sequence_file + '"') else ""} \
      ~{if defined(sequence_format) then ("--sequence_format " +  '"' + sequence_format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmer_length_generate: "K-mer length to generate from input file. (Default:\\n29)"
    offset: "Offset from 5' end of plus-strand read at which to\\nattribute score (Default: 14)"
    mismatches: "Number of mismatches tolerated in alignment. (Default:\\n0)"
    bowtie: "Location of bowtie binary (Default:\\n``/usr/local/bin/bowtie``)"
    have_km_ers: "If specified, use k-mer files from previous run. In\\nthis case 'sequence_file' should be the value\\n'outbase' from the k-mer files you want to use."
    save_km_ers: "Save k-mer files for reuse in a subsequent run."
    processes: "Number of processes to use (should be <= number of"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)"
    sequence_file: "[fasta | fastq | twobit | genbank | embl]\\nA file of DNA sequence"
    sequence_format: "Format of sequence_file (Default: fasta).\\n"
    out_base_read_length_mismatches_crossmap_dot_bed: "Final mask file annotation, in BED format"
    out_base_read_length_mismatches_chromosome_km_ers_dot_fa: "K-mers derived from chromosome `CHROMOSOME`. These\\nfiles can be reused in subsequent runs allowing a different number of\\nmismatches, using the ``--have_kmers`` option"
    sequence: "- By default, crossmap creates BED files. Consider converting these to"
    e_bwt: "Bowtie index of genome against which crossmap will be\\nmade. In most cases, should be generated from the same\\nsequences that are in `sequence_file`."
    out_base: "Basename for output files"
    chromosomes: "warning/error options:"
  }
  output {
    File out_stdout = stdout()
  }
}