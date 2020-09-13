version 1.0

task MafRegionCoverageBySrcpy {
  input {
    String? src
    String? prefix
    String maf_files
  }
  command <<<
    maf_region_coverage_by_src_py \
      ~{maf_files} \
      ~{if defined(src) then ("--src " +  '"' + src + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    src: "Use this src for all intervals"
    prefix: "Prepend this to each src before lookup\\n"
    maf_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}