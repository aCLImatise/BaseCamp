from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Atlas_Validation_Py_V0_1_0 = CommandToolBuilder(tool="atlas_validation.py", base_command=["atlas_validation.py"], inputs=[], outputs=[], container="quay.io/biocontainers/atlas-metadata-validator:1.4.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Atlas_Validation_Py_V0_1_0().translate("wdl")

