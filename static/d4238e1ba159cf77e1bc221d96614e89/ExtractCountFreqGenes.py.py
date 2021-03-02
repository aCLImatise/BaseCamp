from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extractcountfreqgenes_Py_V0_1_0 = CommandToolBuilder(tool="ExtractCountFreqGenes.py", base_command=["ExtractCountFreqGenes.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractcountfreqgenes_Py_V0_1_0().translate("wdl", allow_empty_container=True)

