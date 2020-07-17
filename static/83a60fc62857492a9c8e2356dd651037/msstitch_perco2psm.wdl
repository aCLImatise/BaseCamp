version 1.0

task MsstitchPerco2psm {
  input {
    String? directory_to_output
    String? output_file
    Array[String] multiple_input_files
    Array[String] mz_ids
    String? per_co
    String? filt_pep
    String? filt_psm
  }
  command <<<
    msstitch perco2psm \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(multiple_input_files) then ("-i " +  '"' + multiple_input_files + '"') else ""} \
      ~{if defined(mz_ids) then ("--mzids " +  '"' + mz_ids + '"') else ""} \
      ~{if defined(per_co) then ("--perco " +  '"' + per_co + '"') else ""} \
      ~{if defined(filt_pep) then ("--filtpep " +  '"' + filt_pep + '"') else ""} \
      ~{if defined(filt_psm) then ("--filtpsm " +  '"' + filt_psm + '"') else ""}
  >>>
  parameter_meta {
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    multiple_input_files: "Multiple input files of {} format"
    mz_ids: "MzIdentML output files belonging to PSM table TSV files, use same order as for TSVs"
    per_co: "Percolator XML output file"
    filt_pep: "Peptide q-value cutoff level as a floating point number"
    filt_psm: "PSM q-value cutoff level as a floating point number"
  }
}