version 1.0

task MagnitudeDifferenceFlagspy {
  input {
    String? input_dataset_wide
    File? design
    String? id
    String? group
    Boolean? no_zero
    Boolean? debug
    File? html
    File? html_path
    File? figure
    File? flags
    File? output_name_counts
    String count_digits_determine
  }
  command <<<
    magnitude_difference_flags_py \
      ~{count_digits_determine} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if (no_zero) then "--noZero" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(html_path) then ("--htmlPath " +  '"' + html_path + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{if defined(output_name_counts) then ("--counts " +  '"' + output_name_counts + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secimtools:21.3.4.2--py_0"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with uniq IDs."
    group: "Add the option to separate sample IDs by treatement\\nname."
    no_zero: "Flag to ignore zeros."
    debug: "Add debugging log output."
    html: "Path for html output file (this option is just for\\ngalaxy"
    html_path: "Path for html output file (this option is just for\\ngalaxy"
    figure: "Output path for plot file"
    flags: "Output path for flag file"
    output_name_counts: "Output name for counts filesThe extension is not\\nrequiered its going to be addedautomatically for each\\nfile.\\n"
    count_digits_determine: "Count the digits in data to determine possible outliers or discrepancies"
  }
  output {
    File out_stdout = stdout()
    File out_html = "${in_html}"
    File out_html_path = "${in_html_path}"
    File out_figure = "${in_figure}"
    File out_flags = "${in_flags}"
    File out_output_name_counts = "${in_output_name_counts}"
  }
}