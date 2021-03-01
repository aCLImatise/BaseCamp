version 1.0

task Crassassembler {
  input {
    Boolean? group
    Boolean? segments
    File? xml
    Boolean? in_dir
    Directory? outdir
  }
  command <<<
    crass_assembler \
      ~{if (group) then "--group" else ""} \
      ~{if (segments) then "--segments" else ""} \
      ~{if (xml) then "--xml" else ""} \
      ~{if (in_dir) then "--inDir" else ""} \
      ~{if (outdir) then "--outDir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    group: "<INT>   ID of the group that you want to assemble.  Give only the group number; For example\\nif the group is G9, the argument to this option should just be the number 9"
    segments: "<LIST>  A comma separated list of numbered segments to assemble from the specified group\\nThe segment identifier is the number listed after the 'C' in the name of the spacer\\nin the graph image of the CRISPR.  For example if a spacer's name is sp_6_3_C1, then\\nthe segment is 1."
    xml: "<FILE>  xml output file created by crass.  should be called crass.crispr in the crass output directory"
    in_dir: "<DIR>   input directory for the assembly. This will be the output directory from Crass [default: .]"
    outdir: "<DIR>   name of the directory for the assembly output files"
  }
  output {
    File out_stdout = stdout()
    File out_xml = "${in_xml}"
    Directory out_outdir = "${in_outdir}"
  }
}