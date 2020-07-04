version 1.0

task SingularityImage {
  input {
    String image_dot_create
    String image_dot_import
    String image_dot_expand
    String image_dot_export
  }
  command <<<
    singularity image \
      ~{image_dot_create} \
      ~{image_dot_import} \
      ~{image_dot_expand} \
      ~{image_dot_export}
  >>>
  parameter_meta {
    image_dot_create: "Create an image"
    image_dot_import: "Import data into an image"
    image_dot_expand: "Expand an image"
    image_dot_export: "Export the contents of an image"
  }
}