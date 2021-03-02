version 1.0

task DebarcerPlot {
  input {
    File? config
    Directory? directory
    String? extension
    String? sample
    String? report
    Int? min_cov
    Int? min_ratio
    String? minum_is
    Int? min_children
    String? ref_threshold
  }
  command <<<
    debarcer plot \
      ~{if defined(config) then ("--Config " +  '"' + config + '"') else ""} \
      ~{if defined(directory) then ("--Directory " +  '"' + directory + '"') else ""} \
      ~{if defined(extension) then ("--Extension " +  '"' + extension + '"') else ""} \
      ~{if defined(sample) then ("--Sample " +  '"' + sample + '"') else ""} \
      ~{if defined(report) then ("--Report " +  '"' + report + '"') else ""} \
      ~{if defined(min_cov) then ("--MinCov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_ratio) then ("--MinRatio " +  '"' + min_ratio + '"') else ""} \
      ~{if defined(minum_is) then ("--MinUmis " +  '"' + minum_is + '"') else ""} \
      ~{if defined(min_children) then ("--MinChildren " +  '"' + min_children + '"') else ""} \
      ~{if defined(ref_threshold) then ("--RefThreshold " +  '"' + ref_threshold + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/debarcer:2.1.3--py_0"
  }
  parameter_meta {
    config: "Path to the config file"
    directory: "Directory with subdirectories ConsFiles and Datafiles"
    extension: "Figure format. Does not generate a report if pdf, even\\nwith -r True. Default is png"
    sample: "Sample name to apear in the report is reporting flag\\nactivated. Optional"
    report: "Generate a report if activated. Default is True"
    min_cov: "Minimum coverage value. Values below are plotted in\\nred"
    min_ratio: "Minimum children to parent umi ratio. Values below are\\nplotted in red"
    minum_is: "Minimum umi count. Values below are plotted in red"
    min_children: "Minimum children umi count. Values below are plotted\\nin red"
    ref_threshold: "Cut Y axis at non-ref frequency, the minimum frequency\\nto consider a position variable\\n"
  }
  output {
    File out_stdout = stdout()
  }
}