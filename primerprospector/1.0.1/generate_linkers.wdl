version 1.0

task GenerateLinkers.py {
  input {
    String hitsHitsFps
    String fastFastAFps
  }
  command <<<
    generate_linkers.py \
      ~{if defined(hitsHitsFps) then ("--hits_fps " +  '"' + hitsHitsFps + '"') else ""} \
      ~{if defined(fastFastAFps) then ("--fasta_fps " +  '"' + fastFastAFps + '"') else ""}
  >>>
}