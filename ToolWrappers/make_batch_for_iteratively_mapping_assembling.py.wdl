version 1.0

task MakeBatchForIterativelyMappingAssemblingpy {
  input {
    Int? input_st_fastq
    Int? input_nd_fastq
    File? input_fasta_format
    Int? how_many_iterations
    Int? theads_used_bowtie
    Int? spades_kmer_settings
    File? executable_output_batch
    Boolean? un
    Int? random_seed
    Int? which_bowtie_two
    File? which_spades
  }
  command <<<
    make_batch_for_iteratively_mapping_assembling_py \
      ~{if defined(input_st_fastq) then ("-1 " +  '"' + input_st_fastq + '"') else ""} \
      ~{if defined(input_nd_fastq) then ("-2 " +  '"' + input_nd_fastq + '"') else ""} \
      ~{if defined(input_fasta_format) then ("-s " +  '"' + input_fasta_format + '"') else ""} \
      ~{if defined(how_many_iterations) then ("-R " +  '"' + how_many_iterations + '"') else ""} \
      ~{if defined(theads_used_bowtie) then ("-t " +  '"' + theads_used_bowtie + '"') else ""} \
      ~{if defined(spades_kmer_settings) then ("-k " +  '"' + spades_kmer_settings + '"') else ""} \
      ~{if defined(executable_output_batch) then ("-o " +  '"' + executable_output_batch + '"') else ""} \
      ~{if (un) then "--un" else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(which_bowtie_two) then ("--which-bowtie2 " +  '"' + which_bowtie_two + '"') else ""} \
      ~{if defined(which_spades) then ("--which-spades " +  '"' + which_spades + '"') else ""}
  >>>
  parameter_meta {
    input_st_fastq: "Input 1st fastq format file as pool"
    input_nd_fastq: "Input 2nd fastq format file as pool"
    input_fasta_format: "Input fasta format file as initial seed"
    how_many_iterations: "How many iterations would you like to have? Default=3"
    theads_used_bowtie: "theads used for bowtie2 and SPAdes. Default=1"
    spades_kmer_settings: "SPAdes k-mer settings. Use the same format as in\\nSPAdes. Default=21,45,65,85,105"
    executable_output_batch: "Executable output batch file."
    un: "Try to map and assembly without paired information."
    random_seed: "seed for random generator for bowtie2. Default: 12345"
    which_bowtie_two: "Assign the path to Bowtie2 binary files if not added\\nto the path. Default: try\\nGetOrganelleDep/linux/bowtie2 first, then $PATH"
    which_spades: "Assign the path to SPAdes binary files if not added to\\nthe path. Default: try GetOrganelleDep/linux/SPAdes\\nfirst, then $PATH\\n"
  }
  output {
    File out_stdout = stdout()
    File out_executable_output_batch = "${in_executable_output_batch}"
  }
}