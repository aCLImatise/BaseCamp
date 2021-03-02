version 1.0

task ExtractSupertranscriptFromReferencepy {
  input {
    File? gtf
    Int? gff_three
    File? seq
    File? name_base_path
    String usage
  }
  command <<<
    extract_supertranscript_from_reference_py \
      ~{usage} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(name_base_path) then ("-o " +  '"' + name_base_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gtf: "Path to gtf annotation file."
    gff_three: "Path to gff3 annotation file."
    seq: "Path to fasta file."
    name_base_path: "Name base and path for output"
    usage: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_base_path = "${in_name_base_path}"
  }
}