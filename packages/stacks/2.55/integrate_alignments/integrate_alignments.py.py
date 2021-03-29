from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Integrate_Alignments_Py_V0_1_0 = CommandToolBuilder(tool="integrate_alignments.py", base_command=["integrate_alignments.py"], inputs=[], outputs=[], container="quay.io/biocontainers/stacks:2.55--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Integrate_Alignments_Py_V0_1_0().translate("wdl")

