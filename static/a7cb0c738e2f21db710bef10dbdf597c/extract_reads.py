from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extract_Reads_V0_1_0 = CommandToolBuilder(tool="extract_reads", base_command=["extract_reads"], inputs=[], outputs=[], container="quay.io/biocontainers/fast5-research:1.2.22--pyh864c0ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Reads_V0_1_0().translate("wdl")

