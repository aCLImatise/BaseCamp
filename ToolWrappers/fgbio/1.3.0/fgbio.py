from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fgbio_V0_1_0 = CommandToolBuilder(tool="fgbio", base_command=["fgbio"], inputs=[], outputs=[], container="quay.io/biocontainers/fgbio:1.3.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fgbio_V0_1_0().translate("wdl")

