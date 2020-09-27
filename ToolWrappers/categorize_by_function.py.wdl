version 1.0

task CategorizeByFunctionpy {
  input {
    Boolean? verbose
    String? ignore
    Boolean? format_tab_delimited
    String? input_fp
    String? output_fp
    String? metadata_category
    Int? level
  }
  command <<<
    categorize_by_function_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (format_tab_delimited) then "--format_tab_delimited" else ""} \
      ~{if defined(input_fp) then ("--input_fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""} \
      ~{if defined(metadata_category) then ("--metadata_category " +  '"' + metadata_category + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    ignore: "Ignore the comma separated list of names. For\\ninstance, specifying\\n--ignore_unknown=unknown,unclassified will ignore\\nthose labels while collapsing. The default is to not\\nignore anything. [default: none]"
    format_tab_delimited: "output the predicted metagenome table in tab-delimited\\nformat [default: False]"
    input_fp: "the predicted metagenome table [REQUIRED]"
    output_fp: "the resulting table [REQUIRED]"
    metadata_category: "the metadata category that describes the hierarchy\\n(e.g. KEGG_Pathways, COG_Category, etc.). Note: RFAM\\npredictions can not be collapsed because there are no\\ncategories to group them into. [REQUIRED]"
    level: "the level in the hierarchy to collapse to. A value of\\n0 is not allowed, a value of 1 is the highest level,\\nand any higher value nears the leaves of the\\nhierarchy. For instance, if the hierarchy contains 4\\nlevels, specifying 3 would collapse at one level above\\nbeing fully specified. [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}