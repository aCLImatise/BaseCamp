version 1.0

task MakeBatchForIterativelyMappingAssembling.py {
  input {
    String? input_st_fastq
    String? input_nd_fastq
    String? input_fasta_format
    String? how_many_iterations
    String? theads_used_default
    String? spades_kmer_settings
    String? executable_output_batch
    Boolean? un
    String? random_seed
    String? which_bowtie_two
    String? which_spades
  }
  command <<<
    make_batch_for_iteratively_mapping_assembling.py \
      ~{if defined(input_st_fastq) then ("-1 " +  '"' + input_st_fastq + '"') else ""} \
      ~{if defined(input_nd_fastq) then ("-2 " +  '"' + input_nd_fastq + '"') else ""} \
      ~{if defined(input_fasta_format) then ("-s " +  '"' + input_fasta_format + '"') else ""} \
      ~{if defined(how_many_iterations) then ("-R " +  '"' + how_many_iterations + '"') else ""} \
      ~{if defined(theads_used_default) then ("-t " +  '"' + theads_used_default + '"') else ""} \
      ~{if defined(spades_kmer_settings) then ("-k " +  '"' + spades_kmer_settings + '"') else ""} \
      ~{if defined(executable_output_batch) then ("-o " +  '"' + executable_output_batch + '"') else ""} \
      ~{true="--un" false="" un} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(which_bowtie_two) then ("--which-bowtie2 " +  '"' + which_bowtie_two + '"') else ""} \
      ~{if defined(which_spades) then ("--which-spades " +  '"' + which_spades + '"') else ""}
  >>>
  parameter_meta {
    input_st_fastq: "Input 1st fastq format file as pool"
    input_nd_fastq: "Input 2nd fastq format file as pool"
    input_fasta_format: "Input fasta format file as initial seed"
    how_many_iterations: "How many iterations would you like to have? Default=3"
    theads_used_default: "theads used for bowtie2 and SPAdes. Default=1"
    spades_kmer_settings: "SPAdes k-mer settings. Use the same format as in SPAdes. Default=21,45,65,85,105"
    executable_output_batch: "Executable output batch file."
    un: "Try to map and assembly without paired information."
    random_seed: "seed for random generator for bowtie2. Default: 12345"
    which_bowtie_two: "Assign the path to Bowtie2 binary files if not added to the path. Default: try GetOrganelleDep/linux/bowtie2 first, then $PATH"
    which_spades: "Assign the path to SPAdes binary files if not added to the path. Default: try GetOrganelleDep/linux/SPAdes first, then $PATH"
  }
}