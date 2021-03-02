version 1.0

task DebarcerReport {
  input {
    Directory? directory
    String? extension
    Directory? sample
    Int? min_cov
    Int? min_ratio
    String? minum_is
    Int? min_children
  }
  command <<<
    debarcer report \
      ~{if defined(directory) then ("--Directory " +  '"' + directory + '"') else ""} \
      ~{if defined(extension) then ("--Extension " +  '"' + extension + '"') else ""} \
      ~{if defined(sample) then ("--Sample " +  '"' + sample + '"') else ""} \
      ~{if defined(min_cov) then ("--MinCov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_ratio) then ("--MinRatio " +  '"' + min_ratio + '"') else ""} \
      ~{if defined(minum_is) then ("--MinUmis " +  '"' + minum_is + '"') else ""} \
      ~{if defined(min_children) then ("--MinChildren " +  '"' + min_children + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/debarcer:2.1.3--py_0"
  }
  parameter_meta {
    directory: "Directory with subdirectories including Figures"
    extension: "Figure format. Does not generate a report if pdf, even\\nwith -r True. Default is png"
    sample: "Sample name. Optional. Directory basename is sample\\nname if not provided"
    min_cov: "Minimum coverage value. Values below are plotted in\\nred"
    min_ratio: "Minimum children to parent umi ratio. Values below are\\nplotted in red"
    minum_is: "Minimum umi count. Values below are plotted in red"
    min_children: "Minimum children umi count. Values below are plotted\\nin red\\n"
  }
  output {
    File out_stdout = stdout()
  }
}