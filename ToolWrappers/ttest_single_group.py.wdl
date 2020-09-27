version 1.0

task TtestSingleGrouppy {
  input {
    String? input_dataset_wide
    File? design
    String? unique_id
    String? group
    String? mu
    File? summaries
    File? flags
    String? volcano
    String? palette
    String? color
  }
  command <<<
    ttest_single_group_py \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(unique_id) then ("--uniqueID " +  '"' + unique_id + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(mu) then ("--mu " +  '"' + mu + '"') else ""} \
      ~{if defined(summaries) then ("--summaries " +  '"' + summaries + '"') else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{if defined(volcano) then ("--volcano " +  '"' + volcano + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(color) then ("--color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    unique_id: "Name of the column with unique identifiers."
    group: "Name of the column with group variable."
    mu: "Mu value for the null."
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