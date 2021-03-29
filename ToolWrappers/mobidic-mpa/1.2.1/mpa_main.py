from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mpa_Main_V0_1_0 = CommandToolBuilder(tool="mpa_main", base_command=["mpa_main"], inputs=[], outputs=[], container="quay.io/biocontainers/mobidic-mpa:1.2.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mpa_Main_V0_1_0().translate("wdl")

