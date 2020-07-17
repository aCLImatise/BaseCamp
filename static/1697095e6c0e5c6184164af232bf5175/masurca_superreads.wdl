version 1.0

task MasurcaSuperreads {
  input {
    File? output_dir
  }
  command <<<
    masurca-superreads \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Create the super reads in the directory given by PATH. Create the directory if it does not exists."
  }
}