version 1.0

task SvtkBedcluster {
  input {
    String? frac
    String? region
    String? prefix
    Boolean? merge_coordinates
    String? tmpdir
    Int? intersection
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
      ~{true="--merge-coordinates" false="" merge_coordinates} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(intersection) then ("--intersection " +  '"' + intersection + '"') else ""}
  >>>
  parameter_meta {
    frac: "Minimum reciprocal overlap fraction to link variants. [0.8]"
    region: "Region to cluster (chrom:start-end). Requires tabixed bed."
    prefix: "Cluster ID prefix"
    merge_coordinates: "Report median of start and end positions in each cluster as final coordinates of cluster."
    tmpdir: "Temporary directory [/tmp]"
    intersection: "Pre-computed self-intersection of bed."
    bed: "SV calls to cluster. Columns: #chr, start, end, name, sample, svtype"
    f_out: "Clustered bed."
  }
}