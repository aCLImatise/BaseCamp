from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cwltool2Wdl_Py_V0_1_0 = CommandToolBuilder(tool="cwltool2wdl.py", base_command=["cwltool2wdl.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bcbio-nextgen:1.2.7--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cwltool2Wdl_Py_V0_1_0().translate("wdl")

