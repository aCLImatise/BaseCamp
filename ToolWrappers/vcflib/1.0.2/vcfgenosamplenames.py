from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcfgenosamplenames_V0_1_0 = CommandToolBuilder(tool="vcfgenosamplenames", base_command=["vcfgenosamplenames"], inputs=[], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfgenosamplenames_V0_1_0().translate("wdl")

