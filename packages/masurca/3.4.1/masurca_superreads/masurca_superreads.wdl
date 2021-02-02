version 1.0

task Masurcasuperreads {
  input {
    File? output_dir
    Int fragonedotfqdotgz
  }
  command <<<
    masurca_superreads \
      ~{fragonedotfqdotgz} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Create the super reads in the directory given by PATH. Create\\nthe directory if it does not exists.\\n"
    fragonedotfqdotgz: "Unmated library"
  }
  output {
    File out_stdout = stdout()
  }
}