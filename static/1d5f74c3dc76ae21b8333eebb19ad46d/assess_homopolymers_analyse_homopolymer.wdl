version 1.0

task AssessHomopolymersAnalyseHomopolymer {
  input {
    Directory? output_dir
    String pkl
  }
  command <<<
    assess_homopolymers analyse homopolymer \
      ~{pkl} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pomoxis:0.3.6--py_0"
  }
  parameter_meta {
    output_dir: "Output directory (will be created). (default:\\nhomopolymers)\\n"
    pkl: "Input .pkl file(s)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}