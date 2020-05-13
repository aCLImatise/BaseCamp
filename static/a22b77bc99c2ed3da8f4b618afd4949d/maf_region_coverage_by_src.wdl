version 1.0

task MafRegionCoverageBySrc.py {
  input {
    String srcSrc
    String prefixPrefix
  }
  command <<<
    maf_region_coverage_by_src.py \
      ~{if defined(srcSrc) then ("--src " +  '"' + srcSrc + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}