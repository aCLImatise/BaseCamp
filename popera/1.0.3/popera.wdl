version 1.0

task Popera {
  input {
    String? data
    String? name
    String? bandwidth
    String? threshold
    Int? minlength
    String? threads
    Boolean? bigwig
    String? exclude_chr
  }
  command <<<
    popera \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(bandwidth) then ("--bandwidth " +  '"' + bandwidth + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--bigwig" false="" bigwig} \
      ~{if defined(exclude_chr) then ("--excludechr " +  '"' + exclude_chr + '"') else ""}
  >>>
  parameter_meta {
    data: "data file, should be sorted bam format"
    name: "NH sample name default=NH_sample"
    bandwidth: "kernel smooth band width, should >1, default=200"
    threshold: "Hot spots threshold, default=4.0"
    minlength: "minimum length of hot spots, default=5"
    threads: "threads number or cpu number, default=4"
    bigwig: "whether out put bigwig file, default=False"
    exclude_chr: "Don't count those DHs, example='-x ChrM,ChrC'"
  }
}