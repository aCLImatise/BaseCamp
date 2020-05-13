version 1.0

task SimulateErrors.py {
  input {
    String eE
    String wW
    String zZ
    String? inputInputFastA
    String? outputOutputFastA
  }
  command <<<
    simulate_errors.py \
      ~{inputInputFastA} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{outputOutputFastA}
  >>>
}