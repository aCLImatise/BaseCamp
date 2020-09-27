version 1.0

task GdtoolsGD2CIRCOS {
  input {
    File? reference
    Directory? name_save_files
    Int? distance
    Int? feature
  }
  command <<<
    gdtools GD2CIRCOS \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(name_save_files) then ("--output " +  '"' + name_save_files + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""}
  >>>
  parameter_meta {
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    name_save_files: "name of directory to save Circos configuration files and scripts (DEFAULT=circos_output)"
    distance: "the distance from the center the first axis will be in proportion to the default size (DEFAULT=1.0)"
    feature: "the scale of the features in proportion to the default size (DEFAULT=1.0)"
  }
  output {
    File out_stdout = stdout()
  }
}