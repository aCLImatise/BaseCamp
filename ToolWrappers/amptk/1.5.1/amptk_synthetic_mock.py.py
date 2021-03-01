from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Amptk_Synthetic_Mock_Py_V0_1_0 = CommandToolBuilder(tool="amptk_synthetic_mock.py", base_command=["amptk_synthetic_mock.py"], inputs=[], outputs=[], container="quay.io/biocontainers/amptk:1.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Synthetic_Mock_Py_V0_1_0().translate("wdl")

