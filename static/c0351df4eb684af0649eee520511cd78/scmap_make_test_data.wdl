version 1.0

task ScmapMakeTestData.R {
  input {
    String? output_object_file
  }
  command <<<
    scmap-make-test-data.R \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    output_object_file: "file name in which to store serialized R object of type 'SingleCellExperiment'."
  }
}