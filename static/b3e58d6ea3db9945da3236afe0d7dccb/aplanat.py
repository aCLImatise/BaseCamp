from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Aplanat_V0_1_0 = CommandToolBuilder(tool="aplanat", base_command=["aplanat"], inputs=[], outputs=[], container="quay.io/biocontainers/aplanat:0.3.2--pyh5bfb8f1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aplanat_V0_1_0().translate("wdl")

