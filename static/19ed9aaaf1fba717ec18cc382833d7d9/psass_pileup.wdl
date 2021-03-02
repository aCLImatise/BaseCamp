version 1.0

task PsassPileup {
  input {
    Boolean? reference
    File? output_file
    Boolean? min_map_quality
    String alignment_files_dot_dot_dot
  }
  command <<<
    psass pileup \
      ~{alignment_files_dot_dot_dot} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (min_map_quality) then "--min-map-quality" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "TEXT:FILE    Reference file in fasta format, required with CRAM input files"
    output_file: "TEXT         Write to an output file instead of stdout"
    min_map_quality: "UINT         Minimum mapping quality to include a read in pileup                        [0]"
    alignment_files_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}