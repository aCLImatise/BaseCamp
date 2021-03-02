from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Idpassemble_V0_1_0 = CommandToolBuilder(tool="idpAssemble", base_command=["idpAssemble"], inputs=[], outputs=[], container="quay.io/biocontainers/bumbershoot:3_0_20295_bfe5db0--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idpassemble_V0_1_0().translate("wdl")

