from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Model_Fitting_Py_V0_1_0 = CommandToolBuilder(tool="model_fitting.py", base_command=["model_fitting.py"], inputs=[], outputs=[], container="quay.io/biocontainers/nanosim:2.6.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Model_Fitting_Py_V0_1_0().translate("wdl")

