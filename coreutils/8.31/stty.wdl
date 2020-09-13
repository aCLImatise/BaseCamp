version 1.0

task Stty {
  input {
    Boolean? all
    Boolean? save
    File? file
    Boolean? var_3
    Boolean? same_as_raw
    Boolean? var_5
    Boolean? var_6
    Boolean? same_icrnl_inlcr
    Boolean? var_8
    Boolean? var_9
    Boolean? i_canon
    Int? imax_bel
    Boolean? same_as_cooked
    String speed
    String csn
    String var_15
    String same_brkint_ignpar
    String crt
    String dec
    String ek
    String var_20
    String var_21
    String same_icrnl_onlcr
    String var_23
    Int var_24
    String same_ignpar_parmrk
    String sane
  }
  command <<<
    stty \
      ~{speed} \
      ~{csn} \
      ~{var_15} \
      ~{same_brkint_ignpar} \
      ~{crt} \
      ~{dec} \
      ~{ek} \
      ~{var_20} \
      ~{var_21} \
      ~{same_icrnl_onlcr} \
      ~{var_23} \
      ~{var_24} \
      ~{same_ignpar_parmrk} \
      ~{sane} \
      ~{if (all) then "--all" else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if (var_3) then "-cbreak" else ""} \
      ~{if (same_as_raw) then "-cooked" else ""} \
      ~{if (var_5) then "-evenp" else ""} \
      ~{if (var_6) then "-litout" else ""} \
      ~{if (same_icrnl_inlcr) then "-nl" else ""} \
      ~{if (var_8) then "-oddp" else ""} \
      ~{if (var_9) then "-pass8" else ""} \
      ~{if (i_canon) then "-icanon" else ""} \
      ~{if defined(imax_bel) then ("-imaxbel " +  '"' + imax_bel + '"') else ""} \
      ~{if (same_as_cooked) then "-raw" else ""}
  >>>
  parameter_meta {
    all: "print all current settings in human-readable form"
    save: "print all current settings in a stty-readable form"
    file: "open and use the specified DEVICE instead of stdin"
    var_3: "same as icanon"
    same_as_raw: "same as raw"
    var_5: "same as -parenb cs8"
    var_6: "same as parenb istrip opost cs7"
    same_icrnl_inlcr: "same as icrnl -inlcr -igncr onlcr -ocrnl -onlret"
    var_8: "same as -parenb cs8"
    var_9: "same as parenb istrip cs7"
    i_canon: ""
    imax_bel: "1 time 0"
    same_as_cooked: "same as cooked"
    speed: "print the terminal speed"
    csn: "set character size to N bits, N in [5..8]"
    var_15: "same as -icanon"
    same_brkint_ignpar: "same as brkint ignpar istrip icrnl ixon opost isig\\nicanon, eof and eol characters to their default values"
    crt: "same as echoe echoctl echoke"
    dec: "same as echoe echoctl echoke -ixany intr ^c erase 0177\\nkill ^u"
    ek: "erase and kill characters to their default values"
    var_20: "same as parenb -parodd cs7"
    var_21: "same as -parenb -istrip -opost cs8"
    same_icrnl_onlcr: "same as -icrnl -onlcr"
    var_23: "same as parenb parodd cs7"
    var_24: "same as -parenb -istrip cs8"
    same_ignpar_parmrk: "same as -ignbrk -brkint -ignpar -parmrk -inpck -istrip"
    sane: "same as cread -ignbrk brkint -inlcr -igncr icrnl\\nicanon iexten echo echoe echok -echonl -noflsh\\n-ixoff -iutf8 -iuclc -ixany imaxbel -xcase -olcuc -ocrnl\\nopost -ofill onlcr -onocr -onlret nl0 cr0 tab0 bs0 vt0 ff0\\nisig -tostop -ofdel -echoprt echoctl echoke -flusho,\\nall special characters to their default values"
  }
  output {
    File out_stdout = stdout()
  }
}