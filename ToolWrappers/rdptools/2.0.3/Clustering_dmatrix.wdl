version 1.0

task ClusteringDmatrix {
  input {
    String? dist_cut_off
    File? in
    File? id_mapping
    Int? min_overlap
    String? mask
    File? outfile
    Directory? workdir
    String distance_calculator
    String? arg
  }
  command <<<
    Clustering dmatrix \
      ~{distance_calculator} \
      ~{arg} \
      ~{if defined(dist_cut_off) then ("--dist-cutoff " +  '"' + dist_cut_off + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(id_mapping) then ("--id-mapping " +  '"' + id_mapping + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""}
  >>>
  parameter_meta {
    dist_cut_off: "Only save distances below the cutoff"
    in: "Input fasta file"
    id_mapping: "Id mapping file"
    min_overlap: "Minium number of comparable positions (default =\\n100)"
    mask: "Mask sequence"
    outfile: "File to write sorted column matrix to"
    workdir: "Working directory where temp files are stored"
    distance_calculator: ""
    arg: ""
  }
  output {
    File out_stdout = stdout()
  }
}