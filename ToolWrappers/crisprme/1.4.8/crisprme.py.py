from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Crisprme_Py_V0_1_0 = CommandToolBuilder(tool="crisprme.py", base_command=["crisprme.py"], inputs=[], outputs=[], container="quay.io/biocontainers/crisprme:1.4.8--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crisprme_Py_V0_1_0().translate("wdl")

