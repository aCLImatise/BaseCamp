version 1.0

task SvtkBedcluster {
  input {
    Float? frac
    String? region
    String? prefix
    Boolean? merge_coordinates
    Directory? tmpdir
    String? intersection
    String bed
    String f_out
  }
  command <<<
    svtk bedcluster \
      ~{bed} \
      ~{f_out} \
      ~{if defined(frac) then ("--frac " +  '"' + frac + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (merge_coordinates) then "--merge-coordinates" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(intersection) then ("--intersection " +  '"' + intersection + '"') else ""}
  >>>
  parameter_meta {
    frac: "Minimum reciprocal overlap fraction to link variants.\\n[0.8]"
    region: "Region to cluster (chrom:start-end). Requires tabixed\\nbed."
    prefix: "Cluster ID prefix"
    merge_coordinates: "Report median of start and end positions in each\\ncluster as final coordinates of cluster."
    tmpdir: "Temporary directory [/tmp]"
    intersection: "Pre-computed self-intersection of bed.\\n"
    bed: "SV calls to cluster. Columns: #chr, start, end, name,\\nsample, svtype"
    f_out: "Clustered bed."
  }
  output {
    File out_stdout = stdout()
  }
}