version 1.0

task CooltoolsDumpcworld {
  input {
    File? c_world_type
    File? region
    Boolean? balancing_type
    String format_dot
  }
  command <<<
    cooltools dump_cworld \
      ~{format_dot} \
      ~{if (c_world_type) then "--cworld-type" else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (balancing_type) then "--balancing-type" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0"
  }
  parameter_meta {
    c_world_type: "[matrix|tar]      The format of the CWorld output. 'matrix'\\nconverts a single .cool file into the\\n.matrix.txt.gz tab-separated format. 'tar'\\ndumps all specified cooler files into a\\nsingle .tar archive containing multiple\\n.matrix.txt.gz files (use to make multi-\\nresolution archives).  [default: matrix]"
    region: "The coordinates of a genomic region to dump,\\nin the UCSC format. If empty (by default),\\ndump a genome-wide matrix. This option can\\nbe used only when dumping a single cooler\\nfile.  [default: ]"
    balancing_type: "[IC_unity|IC|raw]\\nThe type of the matrix balancing. 'IC_unity'\\n- iteratively corrected for the total number\\nof contacts per locus=1.0; 'IC' - same, but\\npreserving the average total number of\\ncontacts; 'raw' - no balancing  [default:\\nIC_unity]"
    format_dot: "COOL_PATHS : Paths to one or multiple .cool files OUT_PATH : Output CWorld"
  }
  output {
    File out_stdout = stdout()
    File out_c_world_type = "${in_c_world_type}"
  }
}