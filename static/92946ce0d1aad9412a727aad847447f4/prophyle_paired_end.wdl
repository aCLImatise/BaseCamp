version 1.0

task ProphylePairedEnd.pyReads2 {
  input {
    String? o
    String prophy_le_paired_enddo_tpy
    String reads_one
    String reads_two
  }
  command <<<
    prophyle_paired_end.py reads_2 \
      ~{prophy_le_paired_enddo_tpy} \
      ~{reads_one} \
      ~{reads_two} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    prophy_le_paired_enddo_tpy: ""
    reads_one: ""
    reads_two: ""
  }
}