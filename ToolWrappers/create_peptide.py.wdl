version 1.0

task CreatePeptidepy {
  input {
    String? seq
    Directory? output_directory
    Int? m_steps
    Int? time
  }
  command <<<
    create_peptide_py \
      ~{if defined(seq) then ("-seq " +  '"' + seq + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(m_steps) then ("-m_steps " +  '"' + m_steps + '"') else ""} \
      ~{if defined(time) then ("-time " +  '"' + time + '"') else ""}
  >>>
  parameter_meta {
    seq: "Peptide sequence"
    output_directory: "Output Directory"
    m_steps: "Minimisation nsteps, default=1000"
    time: "Vacuum equilibration time(ns), default = 1ns"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}