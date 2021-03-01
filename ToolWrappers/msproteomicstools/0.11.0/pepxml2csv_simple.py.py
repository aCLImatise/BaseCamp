from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pepxml2Csv_Simple_Py_V0_1_0 = CommandToolBuilder(tool="pepxml2csv_simple.py", base_command=["pepxml2csv_simple.py"], inputs=[], outputs=[], container="quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pepxml2Csv_Simple_Py_V0_1_0().translate("wdl")

