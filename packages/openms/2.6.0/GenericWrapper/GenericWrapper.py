from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Genericwrapper_V0_1_0 = CommandToolBuilder(tool="GenericWrapper", base_command=["GenericWrapper"], inputs=[], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genericwrapper_V0_1_0().translate("wdl")

