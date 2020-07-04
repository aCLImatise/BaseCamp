version 1.0

task ParseDb.pySplit {
  input {
    Array[String] list_tab_delimited
    String? outdir
    String? out_name
    String? annotation_field_split
    String? num
  }
  command <<<
    ParseDb.py split \
      ~{if defined(list_tab_delimited) then ("-d " +  '"' + list_tab_delimited + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(annotation_field_split) then ("-f " +  '"' + annotation_field_split + '"') else ""} \
      ~{if defined(num) then ("--num " +  '"' + num + '"') else ""}
  >>>
  parameter_meta {
    list_tab_delimited: "A list of tab delimited database files. (default: None)"
    outdir: "Specify to changes the output directory to the location specified. The input file directory is used if this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed output file to the string specified. May not be specified with multiple input files. (default: None)"
    annotation_field_split: "Annotation field by which to split database files. (default: None)"
    num: "Specify to define the field as numeric and group records by whether they are less than or at least (greater than or equal to) the specified value. (default: None)"
  }
}