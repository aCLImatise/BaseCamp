version 1.0

task CentroidHomfold {
  input {
    Boolean? arg_fasta_file
    String? engine_s
    String? engine_a
    Boolean? arg_weight_base
    Boolean? arg_thereshold_base
    Boolean? ea
    File? arg_specify_filename
    String? posteriors
    File? o_posteriors
    String? postscript
    File? params
    String seq
  }
  command <<<
    centroid_homfold \
      ~{seq} \
      ~{if (arg_fasta_file) then "-H" else ""} \
      ~{if defined(engine_s) then ("--engine_s " +  '"' + engine_s + '"') else ""} \
      ~{if defined(engine_a) then ("--engine_a " +  '"' + engine_a + '"') else ""} \
      ~{if (arg_weight_base) then "-g" else ""} \
      ~{if (arg_thereshold_base) then "-t" else ""} \
      ~{if (ea) then "--ea" else ""} \
      ~{if (arg_specify_filename) then "-o" else ""} \
      ~{if defined(posteriors) then ("--posteriors " +  '"' + posteriors + '"') else ""} \
      ~{if defined(o_posteriors) then ("--oposteriors " +  '"' + o_posteriors + '"') else ""} \
      ~{if defined(postscript) then ("--postscript " +  '"' + postscript + '"') else ""} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""}
  >>>
  parameter_meta {
    arg_fasta_file: "[ --homologous ] arg fasta file containing homologous sequences (REQUIRED)"
    engine_s: "specify the inference engine for secondary structures\\n(default: \\\"McCaskill\\\")"
    engine_a: "specify the inference engine for pairwise alignments\\n(default: \\\"CONTRAlign\\\")"
    arg_weight_base: "[ --gamma ] arg      weight of base pairs"
    arg_thereshold_base: "[ --threshold ] arg  thereshold of base pairs (this option overwrites\\n'gamma')"
    ea: "compute (pseudo-)expected accuracy"
    arg_specify_filename: "[ --output ] arg     specify filename to output predicted secondary\\nstructures. If empty, use the standard output."
    posteriors: "output base-pairing probability matrices which\\ncontain base-pairing probabilities more than the\\ngiven value."
    o_posteriors: "specify filename to output base-pairing probability\\nmatrices. If empty, use the standard output."
    postscript: "draw predicted secondary structures with the\\npostscript (PS) format"
    params: "use the parameter file"
    seq: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_specify_filename = "${in_arg_specify_filename}"
    File out_o_posteriors = "${in_o_posteriors}"
  }
}