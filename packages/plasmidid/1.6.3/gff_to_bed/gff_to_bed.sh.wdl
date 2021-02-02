version 1.0

task GffToBedsh {
  input {
    File? output_directory_optional
  }
  command <<<
    gff_to_bed_sh \
      ~{if defined(output_directory_optional) then ("-i " +  '"' + output_directory_optional + '"') else ""}
  >>>
  parameter_meta {
    output_directory_optional: "file\\n-o output directory (optional). By default the file is placed in the same location as input\\n-C include a supplied word in cds\\n-L include locus tag in cds\\n-q database chraracter delimiter, default \\\"_\\\"\\n-Q query field to retrieve (l=left, r=right), default right\\n-u uniq mode. Remove duplicates\\n-s string to ad at the end of the outputted file\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}