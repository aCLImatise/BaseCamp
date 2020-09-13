version 1.0

task Fixremdcoutspy {
  input {
    Boolean? author
    Boolean? overwrite
    Boolean? couts
    File? prefix
    String required_arguments
  }
  command <<<
    fixremdcouts_py \
      ~{required_arguments} \
      ~{if (author) then "--author" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (couts) then "-couts" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    author: "show the program's author name and exit"
    overwrite: "Allow existing outputs to be overwritten. Default:"
    couts: "[FILE [FILE ...]]\\nAMBER CPOUT and/or CEOUT files"
    prefix: "Prefix of the reordered file names. Default: reordered"
    required_arguments: "Required Arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}