from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gff2Ps_Mycustom_V0_1_0 = CommandToolBuilder(tool="gff2ps_mycustom", base_command=["gff2ps_mycustom"], inputs=[], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff2Ps_Mycustom_V0_1_0().translate("wdl")

