version 1.0

task MegalodonExtrasModifiedBasesCreateMotifBed {
  input {
    Boolean? motif
    File? out_filename
  }
  command <<<
    megalodon_extras modified_bases create_motif_bed \
      ~{if (motif) then "--motif" else ""} \
      ~{if defined(out_filename) then ("--out-filename " +  '"' + out_filename + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0"
  }
  parameter_meta {
    motif: "['MOTIF', 'REL_POS'] ['MOTIF', 'REL_POS']\\nMotif description. Motifs include two values\\nspecifying the sequence motif (may include ambiguity\\ncodes) and the relative modified position. Multiple\\n`--motif` values may be provided."
    out_filename: "Output BED filename. Default: motif_sites.bed\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}