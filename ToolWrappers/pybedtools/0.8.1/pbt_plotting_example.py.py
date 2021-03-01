from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pbt_Plotting_Example_Py_V0_1_0 = CommandToolBuilder(tool="pbt_plotting_example.py", base_command=["pbt_plotting_example.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbt_Plotting_Example_Py_V0_1_0().translate("wdl", allow_empty_container=True)

