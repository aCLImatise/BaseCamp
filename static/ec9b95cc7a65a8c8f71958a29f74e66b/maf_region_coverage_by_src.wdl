version 1.0

task MafRegionCoverageBySrc.py {
  input {
    String? src
    String? prefix
    String maf_files
  }
  command <<<
    maf_region_coverage_by_src.py \
      ~{maf_files} \
      ~{if defined(src) then ("--src " +  '"' + src + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    src: "Use this src for all intervals"
    prefix: "Prepend this to each src before lookup"
    maf_files: ""
  }
}