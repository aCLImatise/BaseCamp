from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kaiju_Gbk2Faa_Pl_V0_1_0 = CommandToolBuilder(tool="kaiju_gbk2faa.pl", base_command=["kaiju-gbk2faa.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/kaiju:1.7.4--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Gbk2Faa_Pl_V0_1_0().translate("wdl")

