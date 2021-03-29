from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gff2Gff_Py_V0_1_0 = CommandToolBuilder(tool="gff2gff.py", base_command=["gff2gff.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bcftools:1.12--h3f113a9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff2Gff_Py_V0_1_0().translate("wdl")

