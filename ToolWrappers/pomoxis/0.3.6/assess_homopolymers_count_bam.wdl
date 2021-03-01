version 1.0

task AssessHomopolymersCountBam {
  input {
    Directory? output_dir
    Int? homo_len
    String bam
  }
  command <<<
    assess_homopolymers count bam \
      ~{bam} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(homo_len) then ("--homo_len " +  '"' + homo_len + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pomoxis:0.3.6--py_0"
  }
  parameter_meta {
    output_dir: "Output directory (will be created). (default:\\nhomopolymers)"
    homo_len: "Minimum homopolymer length, default 3 (default: 3)\\n"
    bam: "Input bam file."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}