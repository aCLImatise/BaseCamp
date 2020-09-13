version 1.0

task Cstranslate {
  input {
    File? in_file
    File? outfile
    File? append
    Int? in_format
    String? out_format
    Boolean? match_assign
    File? alphabet
    File? context_data
    Boolean? pc_admix
    Boolean? pc_ali
    Boolean? weight
    Boolean? ff_index
  }
  command <<<
    cstranslate \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(append) then ("--append " +  '"' + append + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if (match_assign) then "--match-assign" else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(context_data) then ("--context-data " +  '"' + context_data + '"') else ""} \
      ~{if (pc_admix) then "--pc-admix" else ""} \
      ~{if (pc_ali) then "--pc-ali" else ""} \
      ~{if (weight) then "--weight" else ""} \
      ~{if (ff_index) then "--ffindex" else ""}
  >>>
  parameter_meta {
    in_file: "Input file with alignment or sequence"
    outfile: "Output file for generated abstract state sequence (def: <infile>.as)"
    append: "Append generated abstract state sequence to this file"
    in_format: "|seq|fas|... Input format: prf, seq, fas, a2m, a3m or ca3m (def=auto)"
    out_format: "|prf        Outformat: abstract state sequence or profile (def=seq)"
    match_assign: "[0:100]     Make all FASTA columns with less than X% gaps match columns\\n(def: make columns with residue in first sequence match columns)"
    alphabet: "Abstract state alphabet consisting of exactly 219 states (def=internal)"
    context_data: "Add context-specific pseudocounts using given context-data (def=internal)"
    pc_admix: "[0,1]           Pseudocount admix for context-specific pseudocounts (def=0.90)"
    pc_ali: "[0,inf[           Constant in pseudocount calculation for alignments (def=12.0)"
    weight: "[0,inf[           Weight of abstract state column in emission calculation (def=1000.00)"
    ff_index: "Read from -i <ffindex>, write to -o <ffindex> (do not include _ca3m suffix for ca3m informat); enables openmp if possible (def=off)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}