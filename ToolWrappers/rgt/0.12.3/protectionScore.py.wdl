version 1.0

task ProtectionScorepy {
  input {
    String footprint_file
    String m_pbs_file
    String dnase_file
    String genome_file
    String output_file
  }
  command <<<
    protectionScore_py \
      ~{footprint_file} \
      ~{m_pbs_file} \
      ~{dnase_file} \
      ~{genome_file} \
      ~{output_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    footprint_file: ""
    m_pbs_file: ""
    dnase_file: ""
    genome_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}