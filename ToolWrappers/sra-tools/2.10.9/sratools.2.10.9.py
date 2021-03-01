from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sratools_2_10_9_V0_1_0 = CommandToolBuilder(tool="sratools.2.10.9", base_command=["sratools.2.10.9"], inputs=[], outputs=[], container="quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sratools_2_10_9_V0_1_0().translate("wdl")

