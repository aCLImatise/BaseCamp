version 1.0

task MethylpyBuildReference {
  input {
    Array[String] input_files
    String? output_prefix
    String? num_procs
    String? aligner
    File? path_to_aligner
    String? buff_size
  }
  command <<<
    methylpy build-reference \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(path_to_aligner) then ("--path-to-aligner " +  '"' + path_to_aligner + '"') else ""} \
      ~{if defined(buff_size) then ("--buffsize " +  '"' + buff_size + '"') else ""}
  >>>
  parameter_meta {
    input_files: "List of genome fasta files to build a reference from. (default: None)"
    output_prefix: "the prefix of the two output reference files that will be created. (default: None)"
    num_procs: "Number of processors you wish to use to parallelize this function (default: 1)"
    aligner: "Aligner to use. Currently, methylpy supports bowtie, bowtie2 and minimap2. (default: bowtie2)"
    path_to_aligner: "Path to bowtie/bowtie2 installation (default: )"
    buff_size: "The number of bytes that will be read in from the reference at once. (default: 100)"
  }
}