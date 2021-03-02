from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Magic_V0_1_0 = CommandToolBuilder(tool="magic", base_command=["magic"], inputs=[], outputs=[], container="quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Magic_V0_1_0().translate("wdl")

