version 1.0

task MarkRepeatUnique {
  input {
    File? mandatory_path_g
    File? mandatory_path_t
    Float? microhet_probability_default
    Int? microhet_cutoff_default
    String? unitig_unique_astat
    String? unused_cgbdefinitelyuniquecutoff
    Float? span
    Float? low_cov
    Float? reads
    String? long
    Int? short
    String? prefix_output_files
    Boolean? do_not_update
    String version
  }
  command <<<
    markRepeatUnique \
      ~{version} \
      ~{if defined(mandatory_path_g) then ("-g " +  '"' + mandatory_path_g + '"') else ""} \
      ~{if defined(mandatory_path_t) then ("-t " +  '"' + mandatory_path_t + '"') else ""} \
      ~{if defined(microhet_probability_default) then ("-e " +  '"' + microhet_probability_default + '"') else ""} \
      ~{if defined(microhet_cutoff_default) then ("-i " +  '"' + microhet_cutoff_default + '"') else ""} \
      ~{if defined(unitig_unique_astat) then ("-j " +  '"' + unitig_unique_astat + '"') else ""} \
      ~{if defined(unused_cgbdefinitelyuniquecutoff) then ("-k " +  '"' + unused_cgbdefinitelyuniquecutoff + '"') else ""} \
      ~{if defined(span) then ("-span " +  '"' + span + '"') else ""} \
      ~{if defined(low_cov) then ("-lowcov " +  '"' + low_cov + '"') else ""} \
      ~{if defined(reads) then ("-reads " +  '"' + reads + '"') else ""} \
      ~{if defined(long) then ("-long " +  '"' + long + '"') else ""} \
      ~{if defined(short) then ("-short " +  '"' + short + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if (do_not_update) then "-n" else ""}
  >>>
  parameter_meta {
    mandatory_path_g: "Mandatory, path G to a gkpStore directory."
    mandatory_path_t: "<v>   Mandatory, path T to a tigStore, and version V."
    microhet_probability_default: "Microhet probability (default 1e-5)"
    microhet_cutoff_default: "Microhet cutoff (default -1)"
    unitig_unique_astat: "Unitig is not unique if astat is below J (cgbUniqueCutoff)"
    unused_cgbdefinitelyuniquecutoff: "(unused) (cgbDefinitelyUniqueCutoff)"
    span: "Unitig is not unique if a single read spans more than fraction F (default 1.0) of unitig"
    low_cov: "F  Unitig is not unique if fraction F (default 1.0) of unitig is below read depth D (default 2)"
    reads: "Unitig is not unique if unitig has fewer than R (default 2) reads\\nIf R is fractional, the least populous unitigs containing fraction R of reads are marked as repeat\\nExample: unitigs with 9 or fewer reads contain 10% of the reads.  -reads 0.10 would mark these are repeat."
    long: "Unitig is unique if unitig is at least L (default unlimited) bases long"
    short: "Unitig is not unique if unitig is shorter than S (default 1000) bases long"
    prefix_output_files: "Prefix for output files."
    do_not_update: "Do not update the tigStore."
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}