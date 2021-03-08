from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Model_R_V0_1_0 = CommandToolBuilder(tool="model.r", base_command=["model.r"], inputs=[], outputs=[], container="quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Model_R_V0_1_0().translate("wdl")

