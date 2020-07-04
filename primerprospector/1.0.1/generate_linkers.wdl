version 1.0

task GenerateLinkers.py {
  input {
    String? hits_fps
    String? fast_a_fps
  }
  command <<<
    generate_linkers.py \
      ~{if defined(hits_fps) then ("--hits_fps " +  '"' + hits_fps + '"') else ""} \
      ~{if defined(fast_a_fps) then ("--fasta_fps " +  '"' + fast_a_fps + '"') else ""}
  >>>
  parameter_meta {
    hits_fps: "Target primer hits files to generate linkers with. Separate multiple files with a colon. [REQUIRED]"
    fast_a_fps: "Fasta filepath(s).  Must include all fasta sequences used to generate the hits files.  Separate multiple files with a colon. [REQUIRED]"
  }
}