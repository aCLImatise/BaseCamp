from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nemoage_V0_1_0 = CommandToolBuilder(tool="nemoage", base_command=["nemoage"], inputs=[], outputs=[], container="quay.io/biocontainers/nemo-age:0.29.0--h9e03d57_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nemoage_V0_1_0().translate("wdl")

