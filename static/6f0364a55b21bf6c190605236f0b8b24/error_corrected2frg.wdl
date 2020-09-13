version 1.0

task ErrorCorrected2frg {
  input {
    Int? length_min
    String lib_id
  }
  command <<<
    error_corrected2frg \
      ~{lib_id} \
      ~{if defined(length_min) then ("--length-min " +  '"' + length_min + '"') else ""}
  >>>
  parameter_meta {
    length_min: "Minimum length of a read (64)"
    lib_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}