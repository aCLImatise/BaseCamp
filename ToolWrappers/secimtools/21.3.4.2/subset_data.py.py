from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Subset_Data_Py_V0_1_0 = CommandToolBuilder(tool="subset_data.py", base_command=["subset_data.py"], inputs=[], outputs=[], container="quay.io/biocontainers/secimtools:21.3.4.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Subset_Data_Py_V0_1_0().translate("wdl")

