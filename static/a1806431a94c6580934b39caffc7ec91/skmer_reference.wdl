version 1.0

task SkmerReference {
  input {
    Directory? directory_library_defaultworkingdirectorylibrary
    String? output_distances_prefix
    Int? kmer_length_default
    Int? sketch_size_default
    String? base_error_rate
    Int? max_number_use
    Boolean? t
    String estimated_dot
  }
  command <<<
    skmer reference \
      ~{estimated_dot} \
      ~{if defined(directory_library_defaultworkingdirectorylibrary) then ("-l " +  '"' + directory_library_defaultworkingdirectorylibrary + '"') else ""} \
      ~{if defined(output_distances_prefix) then ("-o " +  '"' + output_distances_prefix + '"') else ""} \
      ~{if defined(kmer_length_default) then ("-k " +  '"' + kmer_length_default + '"') else ""} \
      ~{if defined(sketch_size_default) then ("-s " +  '"' + sketch_size_default + '"') else ""} \
      ~{if defined(base_error_rate) then ("-e " +  '"' + base_error_rate + '"') else ""} \
      ~{if defined(max_number_use) then ("-p " +  '"' + max_number_use + '"') else ""} \
      ~{if (t) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_library_defaultworkingdirectorylibrary: "Directory of output (reference) library. Default:\\nworking_directory/library"
    output_distances_prefix: "Output (distances) prefix. Default: ref-dist-mat"
    kmer_length_default: "K-mer length [1-31]. Default: 31"
    sketch_size_default: "Sketch size. Default: 10000000"
    base_error_rate: "Base error rate. By default, the error rate is automatically"
    max_number_use: "Max number of processors to use [1-8]. Default for this machine:\\n8\\n"
    t: ""
    estimated_dot: "-t          Apply Jukes-Cantor transformation to distances. Output 5.0 if"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_library_defaultworkingdirectorylibrary = "${in_directory_library_defaultworkingdirectorylibrary}"
  }
}