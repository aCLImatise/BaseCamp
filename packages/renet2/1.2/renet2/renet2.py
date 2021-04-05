from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Renet2_V0_1_0 = CommandToolBuilder(tool="renet2", base_command=["renet2"], inputs=[], outputs=[], container="quay.io/biocontainers/renet2:1.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Renet2_V0_1_0().translate("wdl")

