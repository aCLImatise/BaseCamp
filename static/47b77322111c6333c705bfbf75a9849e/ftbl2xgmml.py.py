from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ftbl2Xgmml_Py_V0_1_0 = CommandToolBuilder(tool="ftbl2xgmml.py", base_command=["ftbl2xgmml.py"], inputs=[], outputs=[], container="quay.io/biocontainers/influx_si:5.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ftbl2Xgmml_Py_V0_1_0().translate("wdl")

