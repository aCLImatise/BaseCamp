version 1.0

task KallistoMerge {
  input {
    File? index
    Directory? output_dir
    String? arguments
    String ouput_directories
  }
  command <<<
    kallisto merge \
      ~{arguments} \
      ~{ouput_directories} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    index: "Filename for the kallisto index to be used for\\npseudoalignment"
    output_dir: "Directory to write output to"
    arguments: ""
    ouput_directories: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}