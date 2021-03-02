from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mkreport_V0_1_0 = CommandToolBuilder(tool="mkreport", base_command=["mkreport"], inputs=[], outputs=[], container="quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mkreport_V0_1_0().translate("wdl")

