version 1.0

task Lighter {
  input {
    String? seqfile_path_sequence
    String? genomesize_alpha_see
    String? genomsize_case_genome
    String? od
    String? number_use_default
    Int? max_cor
    Boolean? trim
    Boolean? discard
    Boolean? no_qual
    String? new_qual
    File? save_trusted_km_ers
    File? load_trusted_km_ers
    String? zlib
    Boolean? print_version_information
  }
  command <<<
    lighter \
      ~{if defined(seqfile_path_sequence) then ("-r " +  '"' + seqfile_path_sequence + '"') else ""} \
      ~{if defined(genomesize_alpha_see) then ("-k " +  '"' + genomesize_alpha_see + '"') else ""} \
      ~{if defined(genomsize_case_genome) then ("-K " +  '"' + genomsize_case_genome + '"') else ""} \
      ~{if defined(od) then ("-od " +  '"' + od + '"') else ""} \
      ~{if defined(number_use_default) then ("-t " +  '"' + number_use_default + '"') else ""} \
      ~{if defined(max_cor) then ("-maxcor " +  '"' + max_cor + '"') else ""} \
      ~{true="-trim" false="" trim} \
      ~{true="-discard" false="" discard} \
      ~{true="-noQual" false="" no_qual} \
      ~{if defined(new_qual) then ("-newQual " +  '"' + new_qual + '"') else ""} \
      ~{if defined(save_trusted_km_ers) then ("-saveTrustedKmers " +  '"' + save_trusted_km_ers + '"') else ""} \
      ~{if defined(load_trusted_km_ers) then ("-loadTrustedKmers " +  '"' + load_trusted_km_ers + '"') else ""} \
      ~{if defined(zlib) then ("-zlib " +  '"' + zlib + '"') else ""} \
      ~{true="-v" false="" print_version_information}
  >>>
  parameter_meta {
    seqfile_path_sequence: ": seq_file is the path to the sequence file. Can use multiple -r to specifiy multiple sequence files The file can be fasta and fastq, and can be gzip'ed with extension *.gz. When the input file is *.gz, the corresponding output file will also be gzip'ed."
    genomesize_alpha_see: "genome_size alpha: (see README for information on setting alpha) or"
    genomsize_case_genome: "genom_size: in this case, the genome size should be relative accurate."
    od: ": (default: ./)"
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
  }
}