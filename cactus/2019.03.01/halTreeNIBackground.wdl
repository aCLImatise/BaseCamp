version 1.0

task HalTreeNIBackground.py {
  input {
    String backgroundBackgroundBedName
    Boolean arAr
    String arArExtend
    String arArExtendPct
    String rootRoot
    String? halHal
    String? workdirWorkdir
  }
  command <<<
    halTreeNIBackground.py \
      ~{halHal} \
      ~{if defined(backgroundBackgroundBedName) then ("--backgroundBedName " +  '"' + backgroundBackgroundBedName + '"') else ""} \
      ~{true="--ar" false="" arAr} \
      ~{if defined(arArExtend) then ("--arExtend " +  '"' + arArExtend + '"') else ""} \
      ~{if defined(arArExtendPct) then ("--arExtendPct " +  '"' + arArExtendPct + '"') else ""} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{workdirWorkdir}
  >>>
}