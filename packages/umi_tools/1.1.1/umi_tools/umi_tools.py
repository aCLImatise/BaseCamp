from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Umi_Tools_V0_1_0 = CommandToolBuilder(tool="umi_tools", base_command=["umi_tools"], inputs=[], outputs=[], container="quay.io/biocontainers/umi_tools:1.1.1--py38h0213d0e_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umi_Tools_V0_1_0().translate("wdl")

