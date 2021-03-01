version 1.0

task Snap {
  input {
    Boolean? lc_mask
    Boolean? plus
    Boolean? minus
    Boolean? gff
    Boolean? ace
    Boolean? quiet
    File? aa
    File? tx
    File? xdef
    String? name
    File hmm_file
    File fast_a_file
  }
  command <<<
    snap \
      ~{hmm_file} \
      ~{fast_a_file} \
      ~{if (lc_mask) then "-lcmask" else ""} \
      ~{if (plus) then "-plus" else ""} \
      ~{if (minus) then "-minus" else ""} \
      ~{if (gff) then "-gff" else ""} \
      ~{if (ace) then "-ace" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(aa) then ("-aa " +  '"' + aa + '"') else ""} \
      ~{if defined(tx) then ("-tx " +  '"' + tx + '"') else ""} \
      ~{if defined(xdef) then ("-xdef " +  '"' + xdef + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    lc_mask: "treat lowercase as N"
    plus: "predict on plus strand only"
    minus: "predict on minus strand only"
    gff: "output annotation as GFF"
    ace: "output annotation as ACED"
    quiet: "do not send progress to STDERR"
    aa: "create FASTA file of proteins"
    tx: "create FASTA file of transcripts"
    xdef: "external definitions"
    name: "name for the gene [default snap]"
    hmm_file: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}