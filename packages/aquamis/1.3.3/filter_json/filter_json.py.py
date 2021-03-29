from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Json_Py_V0_1_0 = CommandToolBuilder(tool="filter_json.py", base_command=["filter_json.py"], inputs=[], outputs=[], container="quay.io/biocontainers/aquamis:1.3.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Json_Py_V0_1_0().translate("wdl")

