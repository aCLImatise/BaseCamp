version 1.0

task Damageprofiler {
  input {
    String? var_input
    Int? length
    Boolean? all_mapped_and_merged_reads
    String? var_output
    String? reference
    String? specie
    File? species_list
    String? threshold
    Boolean? use_all_reads
    Int? x_axis_histo_id_max
    String? x_axis_histo_id_min
    Int? x_axis_histo_length_max
    Int? x_axis_histo_length_min
    String? yaxis_damage_plot
    String mis_incorporations
    String versionversion
  }
  command <<<
    damageprofiler \
      ~{mis_incorporations} \
      ~{versionversion} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (all_mapped_and_merged_reads) then "--all_mapped_and_merged_reads" else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(specie) then ("--specie " +  '"' + specie + '"') else ""} \
      ~{if defined(species_list) then ("--specieslist " +  '"' + species_list + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if (use_all_reads) then "--use_all_reads" else ""} \
      ~{if defined(x_axis_histo_id_max) then ("--xaxis_histo_id_max " +  '"' + x_axis_histo_id_max + '"') else ""} \
      ~{if defined(x_axis_histo_id_min) then ("--xaxis_histo_id_min " +  '"' + x_axis_histo_id_min + '"') else ""} \
      ~{if defined(x_axis_histo_length_max) then ("--xaxis_histo_length_max " +  '"' + x_axis_histo_length_max + '"') else ""} \
      ~{if defined(x_axis_histo_length_min) then ("--xaxis_histo_length_min " +  '"' + x_axis_histo_length_min + '"') else ""} \
      ~{if defined(yaxis_damage_plot) then ("--yaxis_damageplot " +  '"' + yaxis_damage_plot + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    length: ""
    all_mapped_and_merged_reads: ""
    var_output: ""
    reference: ""
    specie: ""
    species_list: "<SPECIES LIST>"
    threshold: ""
    use_all_reads: ""
    x_axis_histo_id_max: ""
    x_axis_histo_id_min: ""
    x_axis_histo_length_max: ""
    x_axis_histo_length_min: ""
    yaxis_damage_plot: ""
    mis_incorporations: "-title,--title <TITLE>"
    versionversion: "-version,--version"
  }
  output {
    File out_stdout = stdout()
  }
}