version 1.0

task SketchySurveyMashdist {
  input {
    File? fast_a
    File? index
    File? path_output_file
    Int? km_er_size
    Int? sketch_size
  }
  command <<<
    sketchy survey mashdist \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer_size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(sketch_size) then ("--sketch_size " +  '"' + sketch_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    fast_a: "Path to list containing path to genomes per line\\n[required]  [required]"
    index: "Path to lineage index file [required]  [required]"
    path_output_file: "Path to output file [required]"
    km_er_size: "K-mer size to estimate genome distance between\\nall genomes"
    sketch_size: "Sketch size to estimate genome distance between\\nall genomes"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}