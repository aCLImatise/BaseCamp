from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Elprep_V0_1_0 = CommandToolBuilder(tool="elprep", base_command=["elprep"], inputs=[], outputs=[], container="quay.io/biocontainers/elprep:4.1.6--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Elprep_V0_1_0().translate("wdl")

