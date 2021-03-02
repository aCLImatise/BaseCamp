from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tsv2Spectrast_Py_V0_1_0 = CommandToolBuilder(tool="tsv2spectrast.py", base_command=["tsv2spectrast.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tsv2Spectrast_Py_V0_1_0().translate("wdl", allow_empty_container=True)

