version 1.0

task NgmutilsInterleave {
  input {
    File? m_one
    File? m_two
    File? required_output_file
    File? unpaired
    Int? delimiter
    Boolean? force
    Boolean? no_progress
    String? char
  }
  command <<<
    ngm_utils interleave \
      ~{char} \
      ~{if defined(m_one) then ("--m1 " +  '"' + m_one + '"') else ""} \
      ~{if defined(m_two) then ("--m2 " +  '"' + m_two + '"') else ""} \
      ~{if defined(required_output_file) then ("--output " +  '"' + required_output_file + '"') else ""} \
      ~{if defined(unpaired) then ("--unpaired " +  '"' + unpaired + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (no_progress) then "--noprogress" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    m_one: "(required)  Upstream mates (FASTA/Q)"
    m_two: "(required)  Downstream mates (FASTA/Q)"
    required_output_file: "(required)  Output file"
    unpaired: "Write reads without mate to this file."
    delimiter: "The character that precedes the 1 and 2 in the input files."
    force: "Force finishing even if no pairs are found."
    no_progress: "Suppress progress output."
    char: ""
  }
  output {
    File out_stdout = stdout()
    File out_required_output_file = "${in_required_output_file}"
  }
}