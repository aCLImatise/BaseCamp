version 1.0

task Hallagram {
  input {
    String? strongest
    String? largest
    Boolean? mask
    String? cmap
    String? a_x_labels
    File? outfile
    String? similarity
    String? order_by
    String sim_table
    String tree
    String associations
  }
  command <<<
    hallagram \
      ~{sim_table} \
      ~{tree} \
      ~{associations} \
      ~{if defined(strongest) then ("--strongest " +  '"' + strongest + '"') else ""} \
      ~{if defined(largest) then ("--largest " +  '"' + largest + '"') else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if defined(cmap) then ("--cmap " +  '"' + cmap + '"') else ""} \
      ~{if defined(a_x_labels) then ("--axlabels " +  '"' + a_x_labels + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(order_by) then ("--orderby " +  '"' + order_by + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    strongest: "isolate the N strongest associations"
    largest: "isolate the N largest associations"
    mask: "mask feature pairs not in associations"
    cmap: "matplotlib color map"
    a_x_labels: "AXLABELS\\naxis labels"
    outfile: "output file name"
    similarity: "Similarity metric has been used for similarity\\nmeasurement"
    order_by: "Order the significant association by similarity,\\npvalue, or qvalue\\n"
    sim_table: "table of pairwise similarity scores"
    tree: "hypothesis tree (for getting feature order)"
    associations: "HAllA associations"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}