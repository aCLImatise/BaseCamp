version 1.0

task PhyluceProbeGetTiledProbeFromMultipleInputs {
  input {
    Boolean? var_0
    Boolean? var_1
    String? design
    Directory? fast_as
    File? file_store_output
    String? designer
    Int? probe_length
    String? tiling_density
    String? overlap
    File? probe_bed
    File? locus_bed
    String? masking
    Boolean? do_not_remove_ambiguous
    Boolean? remove_gc
    Int? start_index
    Boolean? two_probes
    String _output_output
    String _designer_designer
  }
  command <<<
    phyluce_probe_get_tiled_probe_from_multiple_inputs \
      ~{_output_output} \
      ~{_designer_designer} \
      ~{if (var_0) then "--multi-fasta-output" else ""} \
      ~{if (var_1) then "--probe-prefix" else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(fast_as) then ("--fastas " +  '"' + fast_as + '"') else ""} \
      ~{if defined(file_store_output) then ("--output " +  '"' + file_store_output + '"') else ""} \
      ~{if defined(designer) then ("--designer " +  '"' + designer + '"') else ""} \
      ~{if defined(probe_length) then ("--probe-length " +  '"' + probe_length + '"') else ""} \
      ~{if defined(tiling_density) then ("--tiling-density " +  '"' + tiling_density + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(probe_bed) then ("--probe-bed " +  '"' + probe_bed + '"') else ""} \
      ~{if defined(locus_bed) then ("--locus-bed " +  '"' + locus_bed + '"') else ""} \
      ~{if defined(masking) then ("--masking " +  '"' + masking + '"') else ""} \
      ~{if (do_not_remove_ambiguous) then "--do-not-remove-ambiguous" else ""} \
      ~{if (remove_gc) then "--remove-gc" else ""} \
      ~{if defined(start_index) then ("--start-index " +  '"' + start_index + '"') else ""} \
      ~{if (two_probes) then "--two-probes" else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    design: ""
    fast_as: "The folder of fasta files from which to design probes"
    file_store_output: "The file in which to store the output"
    designer: "Your last name (to indicate who designed the probes)"
    probe_length: "The length of the probes sequence to design"
    tiling_density: "The tiling density"
    overlap: "The method of tiling"
    probe_bed: "The path to an output file for outputting the probe\\ncoordinates in BED format"
    locus_bed: "The path to an output file for outputting the locus\\ncoordinates in BED format"
    masking: "The maximum frequency of per-probe masking allowed\\ncontaining the sequence"
    do_not_remove_ambiguous: "Do not remove loci with probes containing ambiguous\\nbases"
    remove_gc: "Remove loci with GC content outside 30 <= GC <= 70"
    start_index: "The starting UCE index number to use."
    two_probes: "Design only two probes for a given locus."
    _output_output: "--output OUTPUT"
    _designer_designer: "--designer DESIGNER"
  }
  output {
    File out_stdout = stdout()
    File out_file_store_output = "${in_file_store_output}"
    File out_probe_bed = "${in_probe_bed}"
    File out_locus_bed = "${in_locus_bed}"
  }
}