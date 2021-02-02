version 1.0

task SplitByP7Barcode {
  input {
    Boolean? force
  }
  command <<<
    split_by_p7_barcode \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    force: "Overwrite existing files when creating the output."
  }
  output {
    File out_stdout = stdout()
  }
}