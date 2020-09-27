version 1.0

task Lighter {
  input {
    File? seqfile_path_sequence
    Int? genomesize_alpha_see
    Int? number_use_default
    Int? max_cor
    Boolean? trim
    Boolean? discard
    Boolean? no_qual
    String? new_qual
    File? save_trusted_km_ers
    File? load_trusted_km_ers
    Int? zlib
    Boolean? print_version_information
    String or
  }
  command <<<
    lighter \
      ~{or} \
      ~{if defined(seqfile_path_sequence) then ("-r " +  '"' + seqfile_path_sequence + '"') else ""} \
      ~{if defined(genomesize_alpha_see) then ("-k " +  '"' + genomesize_alpha_see + '"') else ""} \
      ~{if defined(number_use_default) then ("-t " +  '"' + number_use_default + '"') else ""} \
      ~{if defined(max_cor) then ("-maxcor " +  '"' + max_cor + '"') else ""} \
      ~{if (trim) then "-trim" else ""} \
      ~{if (discard) then "-discard" else ""} \
      ~{if (no_qual) then "-noQual" else ""} \
      ~{if defined(new_qual) then ("-newQual " +  '"' + new_qual + '"') else ""} \
      ~{if defined(save_trusted_km_ers) then ("-saveTrustedKmers " +  '"' + save_trusted_km_ers + '"') else ""} \
      ~{if defined(load_trusted_km_ers) then ("-loadTrustedKmers " +  '"' + load_trusted_km_ers + '"') else ""} \
      ~{if defined(zlib) then ("-zlib " +  '"' + zlib + '"') else ""} \
      ~{if (print_version_information) then "-v" else ""}
  >>>
  parameter_meta {
    seqfile_path_sequence: ": seq_file is the path to the sequence file. Can use multiple -r to specifiy multiple sequence files\\nThe file can be fasta and fastq, and can be gzip'ed with extension *.gz.\\nWhen the input file is *.gz, the corresponding output file will also be gzip'ed."
    genomesize_alpha_see: "genome_size alpha: (see README for information on setting alpha)"
    number_use_default: ": number of threads to use (default: 1)"
    max_cor: ": the maximum number of corrections within a 20bp window (default: 4)"
    trim: ": allow trimming (default: false)"
    discard: ": discard unfixable reads. Will LOSE paired-end matching when discarding (default: false)"
    no_qual: ": ignore the quality socre (default: false)"
    new_qual: ": set the quality for the bases corrected to the specified score (default: not used)"
    save_trusted_km_ers: ": save the trusted kmers to specified file then stop (default: not used)"
    load_trusted_km_ers: ": directly get solid kmers from specified file (default: not used)"
    zlib: ": set the compression level(0-9) of gzip (default: 1)"
    print_version_information: ": print the version information and quit"
    or: "-K kmer_length genom_size: in this case, the genome size should be relative accurate."
  }
  output {
    File out_stdout = stdout()
  }
}