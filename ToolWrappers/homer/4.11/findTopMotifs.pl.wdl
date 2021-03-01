version 1.0

task FindTopMotifspl {
  input {
    Boolean? top
    Boolean? size
    Boolean? search_size
    File? prefix
  }
  command <<<
    findTopMotifs_pl \
      ~{if (top) then "-top" else ""} \
      ~{if (size) then "-size" else ""} \
      ~{if (search_size) then "-searchSize" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    top: "<#> (number of times to find top motif default:5)"
    size: "<#> (size of fragment | 200)"
    search_size: "<#> (size of fragment to search to remove for future rounds | 200)"
    prefix: "(Name of motif files: prefix.top1.motif... | peakfile.top1.motif)"
  }
  output {
    File out_stdout = stdout()
  }
}