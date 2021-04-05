from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Is_Analysis_Py_V0_1_0 = CommandToolBuilder(tool="is_analysis.py", base_command=["is_analysis.py"], inputs=[], outputs=[], container="quay.io/biocontainers/isescan:1.7.2.2.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Is_Analysis_Py_V0_1_0().translate("wdl")

