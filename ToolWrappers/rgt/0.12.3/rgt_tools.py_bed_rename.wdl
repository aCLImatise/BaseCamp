version 1.0

task RgttoolspyBedRename {
  input {
    File? input_bed_file
    File? output_bed_file
    Boolean? strand_specific
    Boolean? show_the_distance
    Boolean? organism
    Int? define_length_bp
    Int? define_threshold_distance
    Boolean? target
    Boolean? genes
  }
  command <<<
    rgt_tools_py bed_rename \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if (strand_specific) then "-s" else ""} \
      ~{if (show_the_distance) then "-d" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if defined(define_length_bp) then ("-l " +  '"' + define_length_bp + '"') else ""} \
      ~{if defined(define_threshold_distance) then ("-t " +  '"' + define_threshold_distance + '"') else ""} \
      ~{if (target) then "-target" else ""} \
      ~{if (genes) then "-genes" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    strand_specific: "Strand specific"
    show_the_distance: "Show the distance"
    organism: "Define the organism"
    define_length_bp: "Define the length of promoter region (default:1000 bp)"
    define_threshold_distance: "Define the threshold of distance (default:50000bp"
    target: "Target BED file"
    genes: "Target gene list"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}