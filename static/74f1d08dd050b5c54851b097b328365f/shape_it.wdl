version 1.0

task Shapeit {
  input {
    File? reference
    File? dbase
    File? out
    File? scores
    File? format
    String? best
    Boolean? score_only
    Int? add_iterations
    String? rank_by
    Float? cut_off
    Boolean? no_ref
  }
  command <<<
    shape_it \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(dbase) then ("--dbase " +  '"' + dbase + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(scores) then ("--scores " +  '"' + scores + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(best) then ("--best " +  '"' + best + '"') else ""} \
      ~{if (score_only) then "--scoreOnly" else ""} \
      ~{if defined(add_iterations) then ("--addIterations " +  '"' + add_iterations + '"') else ""} \
      ~{if defined(rank_by) then ("--rankBy " +  '"' + rank_by + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if (no_ref) then "--noRef" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "File of the reference molecule with 3D coordinates.\\nOnly the first molecule in the reference file will be used.\\nShape-it can also handle a gzipped files if the extension is '.gz'\\nAll input formats which are recognized by OpenBabel are allowed."
    dbase: "File of the database molecules with 3D coordinates.\\nShape-it can also handle gzipped files if the extension is '.gz'\\nAll input formats which are recognized by OpenBabel are allowed."
    out: "File to write all database or the N best molecules such that their\\ncoordinates correspond to the best alignment with the reference molecule.\\nThe first molecule in the file is the reference molecule. When this file\\nif of type 'sdf', then each molecule contains a set of properties in which\\nthe respective scores are reported. These fields are labeled with an\\nidentifier starting with the tag Shape-it::"
    scores: "Tab-delimited text file with the scores of molecules.\\nWhen the N best scoring molecules are reported the molecules are ranked\\nwith the descending scores."
    format: "Specifies the format of the reference, database and output files. If not\\nprovided, then the formats are determined from the respective file extensions.\\nThe specified format string should be one of the formats recognised\\nby OpenBabel."
    best: "When this option is used, only the N best scoring alignments will be\\nreported. The scoring function is defined by the --rankBy option.\\nBy default all molecules in the database are reported with their\\nrespective scores without any ordering."
    score_only: "When this option is used the molecules are not aligned, only the volume\\noverlap between the reference and the given pose is computed."
    add_iterations: "Sets the number of additional iterations in the simulated annealing\\noptimization step. The default value is set to 0, which refers to only\\na local gradient ascent. Increasing the number of iterations will add\\nadditional steps, and might give better alignments but it also takes\\nmore time."
    rank_by: "This option can be used in combination with --best of --cutoff to rank\\nthe molecules according to a given scoring function. The type of scoring\\nfunction is indicated with a code:\\n- TANIMOTO = Taninoto\\n- TVERSKY_REF = reference Tversky\\n- TVERSKY_DB = database Tversky\\nBy default TANIMOTO is used."
    cut_off: "Defines a cutoff value. Only molecules with a score higher than the\\ncutoff are reported in the results files. Default value is set to\\n0.0. The scoring function is defined by the --rankBy option."
    no_ref: "By default the reference molecule is written in the output files.\\nUse this option to switch off this behavior."
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}