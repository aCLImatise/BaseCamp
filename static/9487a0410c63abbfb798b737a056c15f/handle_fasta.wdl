version 1.0

task HandleFasta.py {
  input {
    Boolean complementComplement
    String conversionConversion
    String? inInFastA
    String? outOutFastA
    String? chrChrSizePath
    String? chrChrDir
  }
  command <<<
    handle_fasta.py \
      ~{inInFastA} \
      ~{true="--Complement" false="" complementComplement} \
      ~{if defined(conversionConversion) then ("-Conversion " +  '"' + conversionConversion + '"') else ""} \
      ~{outOutFastA} \
      ~{chrChrSizePath} \
      ~{chrChrDir}
  >>>
}