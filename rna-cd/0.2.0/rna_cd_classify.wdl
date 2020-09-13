version 1.0

task RnaCdclassify {
  input {
    Int? chunksize
    String? contig
    Int? cores
    Directory? directory
    File? list_items
    File? model
    File? path_output_file
    Float? unknown_threshold
    String classifications_dot
  }
  command <<<
    rna_cd_classify \
      ~{classifications_dot} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(contig) then ("--contig " +  '"' + contig + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(list_items) then ("--list-items " +  '"' + list_items + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(unknown_threshold) then ("--unknown-threshold " +  '"' + unknown_threshold + '"') else ""}
  >>>
  parameter_meta {
    chunksize: "Chunksize in bases. Default = 100"
    contig: "Name of mitochrondrial contig in your BAM\\nfiles. Default = chrM"
    cores: "Number of cores to use for processing of BAM\\nfiles. Default = 1"
    directory: "Path to directory with BAM files to be\\ntested. Mutually exclusive with --list-items"
    list_items: "Path to file containing list of paths to BAM\\nfiles to be tested. Mutually exclusive with\\n--directory"
    model: "Path to model.  [required]"
    path_output_file: "Path to output file containing"
    unknown_threshold: "Threshold of most likely probability below\\nwhich sampleswll be assinged as 'unknown'.\\nDefault = 0.75"
    classifications_dot: "[required]"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}