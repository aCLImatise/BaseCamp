version 1.0

task RnaCdClassify {
  input {
    Int? chunksize
    String? contig
    Int? cores
    Directory? directory
    File? list_items
    File? model
    File? path_output_containing
    Float? unknown_threshold
  }
  command <<<
    rna_cd-classify \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(contig) then ("--contig " +  '"' + contig + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(list_items) then ("--list-items " +  '"' + list_items + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(path_output_containing) then ("--output " +  '"' + path_output_containing + '"') else ""} \
      ~{if defined(unknown_threshold) then ("--unknown-threshold " +  '"' + unknown_threshold + '"') else ""}
  >>>
  parameter_meta {
    chunksize: "Chunksize in bases. Default = 100"
    contig: "Name of mitochrondrial contig in your BAM files. Default = chrM"
    cores: "Number of cores to use for processing of BAM files. Default = 1"
    directory: "Path to directory with BAM files to be tested. Mutually exclusive with --list-items"
    list_items: "Path to file containing list of paths to BAM files to be tested. Mutually exclusive with --directory"
    model: "Path to model.  [required]"
    path_output_containing: "Path to output file containing classifications.  [required]"
    unknown_threshold: "Threshold of most likely probability below which sampleswll be assinged as 'unknown'. Default = 0.75"
  }
}