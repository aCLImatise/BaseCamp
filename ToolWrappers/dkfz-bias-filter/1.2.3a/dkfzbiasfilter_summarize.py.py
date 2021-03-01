from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dkfzbiasfilter_Summarize_Py_V0_1_0 = CommandToolBuilder(tool="dkfzbiasfilter_summarize.py", base_command=["dkfzbiasfilter_summarize.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dkfzbiasfilter_Summarize_Py_V0_1_0().translate("wdl", allow_empty_container=True)

