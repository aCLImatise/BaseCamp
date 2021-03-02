from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Glam2Scan2Html_V0_1_0 = CommandToolBuilder(tool="glam2scan2html", base_command=["glam2scan2html"], inputs=[], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Glam2Scan2Html_V0_1_0().translate("wdl")

