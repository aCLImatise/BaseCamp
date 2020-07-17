version 1.0

task GaasMakerMergeOutputsFromDatastore.pl {
  input {
    Boolean? path_none_assume
    String? name_output_directory
  }
  command <<<
    gaas_maker_merge_outputs_from_datastore.pl \
      ~{true="-i" false="" path_none_assume} \
      ~{if defined(name_output_directory) then ("--output " +  '"' + name_output_directory + '"') else ""}
  >>>
  parameter_meta {
    path_none_assume: "The path to the input directory. If none given, we assume that the script is launched where Maker was run. So, in that case the script will look for the folder *.maker.output."
    name_output_directory: "The name of the output directory. By default the name is annotations"
  }
}