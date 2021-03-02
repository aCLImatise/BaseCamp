from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Variantmap_App_Py_V0_1_0 = CommandToolBuilder(tool="variantmap_app.py", base_command=["variantmap_app.py"], inputs=[], outputs=[], container="quay.io/biocontainers/variantmap:1.0.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variantmap_App_Py_V0_1_0().translate("wdl")

