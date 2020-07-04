version 1.0

task M9BBtopMsa.pl {
  input {
    Boolean? masked_lib_out
    String? query_file
    String? bound_file
    String fast_a_m_nine_output_dotfile
  }
  command <<<
    m9B_btop_msa.pl \
      ~{fast_a_m_nine_output_dotfile} \
      ~{true="--masked_lib_out" false="" masked_lib_out} \
      ~{if defined(query_file) then ("--query_file " +  '"' + query_file + '"') else ""} \
      ~{if defined(bound_file) then ("--bound_file " +  '"' + bound_file + '"') else ""}
  >>>
  parameter_meta {
    masked_lib_out: "-- FASTA format library of MSA sequences"
    query_file: ""
    bound_file: ""
    fast_a_m_nine_output_dotfile: ""
  }
}