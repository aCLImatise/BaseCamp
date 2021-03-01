from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Incremental_Gaussian_Estimator_Py_V0_1_0 = CommandToolBuilder(tool="incremental_gaussian_estimator.py", base_command=["incremental_gaussian_estimator.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Incremental_Gaussian_Estimator_Py_V0_1_0().translate("wdl", allow_empty_container=True)

