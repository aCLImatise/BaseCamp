from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fitter_V0_1_0 = CommandToolBuilder(tool="fitter", base_command=["fitter"], inputs=[], outputs=[], container="quay.io/biocontainers/fitter:1.2.3--pyh145b6a8_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fitter_V0_1_0().translate("wdl")

