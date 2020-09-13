version 1.0

task MethylpyBuildreference {
  input {
    Array[String] input_files
    String? output_prefix
    Int? num_procs
    Int? aligner
    File? path_to_aligner
    Int? buff_size
  }
  command <<<
    methylpy build_reference \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(num_procs) then ("--num-procs " +  '"' + num_procs + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(path_to_aligner) then ("--path-to-aligner " +  '"' + path_to_aligner + '"') else ""} \
      ~{if defined(buff_size) then ("--buffsize " +  '"' + buff_size + '"') else ""}
  >>>
  parameter_meta {
    input_files: "List of genome fasta files to build a reference from.\\n(default: None)"
    output_prefix: "the prefix of the two output reference files that will\\nbe created. (default: None)"
    num_procs: "Number of processors you wish to use to parallelize\\nthis function (default: 1)"
    aligner: "Aligner to use. Currently, methylpy supports bowtie,\\nbowtie2 and minimap2. (default: bowtie2)"
    path_to_aligner: "Path to bowtie/bowtie2 installation (default: )"
    buff_size: "The number of bytes that will be read in from the\\nreference at once. (default: 100)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}