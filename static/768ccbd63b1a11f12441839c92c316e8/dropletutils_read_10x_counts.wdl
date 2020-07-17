version 1.0

task DropletutilsRead10xCounts.R {
  input {
    String? output_object_file
  }
  command <<<
    dropletutils-read-10x-counts.R \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""}
  >>>
  parameter_meta {
    output_object_file: "File name in which to store serialized SingleCellExperiment object."
  }
}