version 1.0

task GsutilLabel {
  input {
    Boolean? add_update_label
    Boolean? remove_label_specified
  }
  command <<<
    gsutil label \
      ~{true="-l" false="" add_update_label} \
      ~{true="-d" false="" remove_label_specified}
  >>>
  parameter_meta {
    add_update_label: "Add or update a label with the specified key and value."
    remove_label_specified: "Remove the label with the specified key."
  }
}