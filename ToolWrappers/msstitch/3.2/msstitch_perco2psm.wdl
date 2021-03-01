version 1.0

task MsstitchPerco2psm {
  input {
    Directory? directory_to_output
    File? output_file
    Array[String] multiple_input_files
    Array[String] mz_ids
    File? per_co
    String? filt_pep
    Int number
  }
  command <<<
    msstitch perco2psm \
      ~{number} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(multiple_input_files) then ("-i " +  '"' + multiple_input_files + '"') else ""} \
      ~{if defined(mz_ids) then ("--mzids " +  '"' + mz_ids + '"') else ""} \
      ~{if defined(per_co) then ("--perco " +  '"' + per_co + '"') else ""} \
      ~{if defined(filt_pep) then ("--filtpep " +  '"' + filt_pep + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    multiple_input_files: "Multiple input files of {} format"
    mz_ids: "MzIdentML output files belonging to PSM table TSV\\nfiles, use same order as for TSVs"
    per_co: "Percolator XML output file"
    filt_pep: "Peptide q-value cutoff level as a floating point"
    number: "--filtpsm FILTPSM     PSM q-value cutoff level as a floating point number"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
    File out_per_co = "${in_per_co}"
  }
}