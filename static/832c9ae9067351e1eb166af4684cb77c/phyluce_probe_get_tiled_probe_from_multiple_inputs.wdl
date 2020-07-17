version 1.0

task PhyluceProbeGetTiledProbeFromMultipleInputs {
  input {
    String? fast_as
    String? multi_fast_a_output
    String? file_store_output
    String? probe_prefix
    String? designer
    String? design
    Int? probe_length
    String? tiling_density
    String? overlap
    String? probe_bed
    String? locus_bed
    String? masking
    Boolean? do_not_remove_ambiguous
    Boolean? remove_gc
    String? start_index
    Boolean? two_probes
  }
  command <<<
    phyluce_probe_get_tiled_probe_from_multiple_inputs \
      ~{if defined(fast_as) then ("--fastas " +  '"' + fast_as + '"') else ""} \
      ~{if defined(multi_fast_a_output) then ("--multi-fasta-output " +  '"' + multi_fast_a_output + '"') else ""} \
      ~{if defined(file_store_output) then ("--output " +  '"' + file_store_output + '"') else ""} \
      ~{if defined(probe_prefix) then ("--probe-prefix " +  '"' + probe_prefix + '"') else ""} \
      ~{if defined(designer) then ("--designer " +  '"' + designer + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(probe_length) then ("--probe-length " +  '"' + probe_length + '"') else ""} \
      ~{if defined(tiling_density) then ("--tiling-density " +  '"' + tiling_density + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(probe_bed) then ("--probe-bed " +  '"' + probe_bed + '"') else ""} \
      ~{if defined(locus_bed) then ("--locus-bed " +  '"' + locus_bed + '"') else ""} \
      ~{if defined(masking) then ("--masking " +  '"' + masking + '"') else ""} \
      ~{true="--do-not-remove-ambiguous" false="" do_not_remove_ambiguous} \
      ~{true="--remove-gc" false="" remove_gc} \
      ~{if defined(start_index) then ("--start-index " +  '"' + start_index + '"') else ""} \
      ~{true="--two-probes" false="" two_probes}
  >>>
  parameter_meta {
    fast_as: "The folder of fasta files from which to design probes"
    multi_fast_a_output: "The output config file from query_multi_fasta_table.py"
    file_store_output: "The file in which to store the output"
    probe_prefix: "The prefix (e.g. \"uce-\") to add to all probes designed"
    designer: "Your last name (to indicate who designed the probes)"
    design: "The design name."
    probe_length: "The length of the probes sequence to design"
    tiling_density: "The tiling density"
    overlap: "The method of tiling"
    probe_bed: "The path to an output file for outputting the probe coordinates in BED format"
    locus_bed: "The path to an output file for outputting the locus coordinates in BED format"
    masking: "The maximum frequency of per-probe masking allowed containing the sequence"
    do_not_remove_ambiguous: "Do not remove loci with probes containing ambiguous bases"
    remove_gc: "Remove loci with GC content outside 30 <= GC <= 70"
    start_index: "The starting UCE index number to use."
    two_probes: "Design only two probes for a given locus."
  }
}