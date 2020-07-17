version 1.0

task RgtHintEvidence {
  input {
    File? m_pbs_file
    File? chip_file
    Int? peak_ext
    File? output_location
    String? output_prefix
  }
  command <<<
    rgt-hint evidence \
      ~{if defined(m_pbs_file) then ("--mpbs-file " +  '"' + m_pbs_file + '"') else ""} \
      ~{if defined(chip_file) then ("--chip-file " +  '"' + chip_file + '"') else ""} \
      ~{if defined(peak_ext) then ("--peak-ext " +  '"' + peak_ext + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    m_pbs_file: "motif predicted binding sites file. DEFAULT: None"
    chip_file: "the ChIP-seq peak files. DEFAULT: None"
    peak_ext: "The number used to extend the ChIP-seq summit. DEFAULT: 100"
    output_location: "Path where the output bias table files will be written. DEFAULT: current directory"
    output_prefix: "The prefix for results files. DEFAULT: evidence"
  }
}