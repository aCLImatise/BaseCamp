version 1.0

task PoperaDhsCount {
  input {
    File? data
    Int? name
    File? bed
    Int? minlength
    Int? threads
  }
  command <<<
    popera_dhs_count \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "data file, should be sorted bam format,\\nexample=DH_sample1.bam,DH_sample2.bam"
    name: "NH sample name default=DH_sample1,DH_sample2"
    bed: "bed file, example=DH_sample1.bed,DH_sample2.bed"
    minlength: "minimum length of merged hot spots, default=5"
    threads: "threads number or cpu number, default=4"
  }
  output {
    File out_stdout = stdout()
  }
}