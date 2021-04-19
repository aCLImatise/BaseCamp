from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Remove_Utrs_Py_V0_1_0 = CommandToolBuilder(tool="remove_utrs.py", base_command=["remove_utrs.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Utrs_Py_V0_1_0().translate("wdl")

