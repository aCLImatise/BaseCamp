version 1.0

task CoolerCloadHiclib {
  input {
    File? metadata
    Int? assembly
    Int? chunksize
    String bins
    String pairs_path
    String cool_path
  }
  command <<<
    cooler cload hiclib \
      ~{bins} \
      ~{pairs_path} \
      ~{cool_path} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    metadata: "Path to JSON file containing user metadata."
    assembly: "Name of genome assembly (e.g. hg19, mm10)"
    chunksize: "Control the number of pixels handled by each worker\\nprocess at a time.  [default: 100000000]"
    bins: ""
    pairs_path: ""
    cool_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}