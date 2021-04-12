from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ssw_Wrap_Py_V0_1_0 = CommandToolBuilder(tool="ssw_wrap.py", base_command=["ssw_wrap.py"], inputs=[], outputs=[], container="quay.io/biocontainers/isescan:1.7.2.3--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssw_Wrap_Py_V0_1_0().translate("wdl")

