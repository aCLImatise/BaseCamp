version 1.0

task AssessHomopolymersAnalyseHomopolymer {
  input {
    Directory? output_dir
    String homopolymer
    String analyse
    String? pkl
  }
  command <<<
    assess_homopolymers analyse homopolymer \
      ~{homopolymer} \
      ~{analyse} \
      ~{pkl} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory (will be created). (default:\\nhomopolymers)\\n"
    homopolymer: ""
    analyse: ""
    pkl: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}