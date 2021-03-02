version 1.0

task ContigOverlaps {
  input {
    Boolean? percent_identity
    String options
    String first_assembly_bams_dot_fof_n
    String second_assembly_bams_dot_fof_n
  }
  command <<<
    contigOverlaps \
      ~{options} \
      ~{first_assembly_bams_dot_fof_n} \
      ~{second_assembly_bams_dot_fof_n} \
      ~{if (percent_identity) then "--percentIdentity" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    percent_identity: "arg  The minimum end-to-end % identity of qualifying reads (default: 97)"
    options: ""
    first_assembly_bams_dot_fof_n: ""
    second_assembly_bams_dot_fof_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}