version 1.0

task Ttestpy {
  input {
    String? input_dataset_wide
    File? design
    String? unique_id
    String? group
    String? pairing
    String? order
    File? summaries
    File? flags
    String? volcano
    String? palette
    String? color
  }
  command <<<
    ttest_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(unique_id) then ("--uniqueID " +  '"' + unique_id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(pairing) then ("--pairing " +  '"' + pairing + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(summaries) then ("--summaries " +  '"' + summaries + '"') else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{if defined(volcano) then ("--volcano " +  '"' + volcano + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    unique_id: "Name of the column with unique identifiers."
    group: "Name of the column with group variable."
    pairing: "Choice of the test: has to be either paired or\\nunpaired."
    order: "Name of the pairing vaiable if paired option is\\nselected.Not required/ignored when unpaired test is\\nselected."
    summaries: "Summaries file name. TSV format."
    flags: "Flags file. TSV format."
    volcano: "Volcano plot. PDF Format."
    palette: "Name of the palette to use."
    color: "Name of a valid color scheme on the selected palette\\n"
  }
  output {
    File out_stdout = stdout()
  }
}