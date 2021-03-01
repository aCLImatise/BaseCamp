version 1.0

task ProphylePairedEndpyReads2 {
  input {
    String? o
    String prophy_le_paired_enddo_tpy
    Int reads_one
    Int reads_two
  }
  command <<<
    prophyle_paired_end_py reads_2 \
      ~{prophy_le_paired_enddo_tpy} \
      ~{reads_one} \
      ~{reads_two} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    prophy_le_paired_enddo_tpy: ""
    reads_one: ""
    reads_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}