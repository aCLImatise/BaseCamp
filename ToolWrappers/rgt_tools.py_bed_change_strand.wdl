version 1.0

task RgttoolspyBedChangeStrand {
  input {
    File? input_bed_file
    File? output_bed_file
    Int? define_threshold_bp
    File? target_bed_file
    Boolean? reverse_the_strand
    String? define_stand_regions
  }
  command <<<
    rgt_tools_py bed_change_strand \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(define_threshold_bp) then ("-d " +  '"' + define_threshold_bp + '"') else ""} \
      ~{if defined(target_bed_file) then ("-t " +  '"' + target_bed_file + '"') else ""} \
      ~{if (reverse_the_strand) then "-r" else ""} \
      ~{if defined(define_stand_regions) then ("-a " +  '"' + define_stand_regions + '"') else ""}
  >>>
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    define_threshold_bp: "Define the threshold of distance (default:0 bp"
    target_bed_file: "Target BED file"
    reverse_the_strand: "Reverse the strand"
    define_stand_regions: "Define the stand for all regions"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}