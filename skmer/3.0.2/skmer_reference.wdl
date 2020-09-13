version 1.0

task SkmerReference {
  input {
    Directory? directory_output_reference
    Int? kmer_length_default
    Int? sketch_size_default
    String? base_error_rate
    Int? max_number_processors
    Boolean? t
    String? o
    String working_directory_slash_library
    String estimated_dot
  }
  command <<<
    skmer reference \
      ~{working_directory_slash_library} \
      ~{estimated_dot} \
      ~{if defined(directory_output_reference) then ("-l " +  '"' + directory_output_reference + '"') else ""} \
      ~{if defined(kmer_length_default) then ("-k " +  '"' + kmer_length_default + '"') else ""} \
      ~{if defined(sketch_size_default) then ("-s " +  '"' + sketch_size_default + '"') else ""} \
      ~{if defined(base_error_rate) then ("-e " +  '"' + base_error_rate + '"') else ""} \
      ~{if defined(max_number_processors) then ("-p " +  '"' + max_number_processors + '"') else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    directory_output_reference: "Directory of output (reference) library. Default:"
    kmer_length_default: "K-mer length [1-31]. Default: 31"
    sketch_size_default: "Sketch size. Default: 10000000"
    base_error_rate: "Base error rate. By default, the error rate is automatically"
    max_number_processors: "Max number of processors to use [1-8]. Default for this machine:\\n8\\n"
    t: ""
    o: ""
    working_directory_slash_library: "-o O        Output (distances) prefix. Default: ref-dist-mat"
    estimated_dot: "-t          Apply Jukes-Cantor transformation to distances. Output 5.0 if"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_output_reference = "${in_directory_output_reference}"
  }
}