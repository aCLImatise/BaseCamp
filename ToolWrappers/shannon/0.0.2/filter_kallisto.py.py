from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Kallisto_Py_V0_1_0 = CommandToolBuilder(tool="filter_kallisto.py", base_command=["filter_kallisto.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Kallisto_Py_V0_1_0().translate("wdl", allow_empty_container=True)

