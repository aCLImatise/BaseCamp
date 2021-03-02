from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


H5Cc_V0_1_0 = CommandToolBuilder(tool="h5cc", base_command=["h5cc"], inputs=[], outputs=[], container="quay.io/biocontainers/bcalm:2.2.3--h8b12597_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Cc_V0_1_0().translate("wdl")

