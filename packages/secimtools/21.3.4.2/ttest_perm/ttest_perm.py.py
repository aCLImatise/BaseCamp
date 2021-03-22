from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ttest_Perm_Py_V0_1_0 = CommandToolBuilder(tool="ttest_perm.py", base_command=["ttest_perm.py"], inputs=[], outputs=[], container="quay.io/biocontainers/secimtools:21.3.4.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ttest_Perm_Py_V0_1_0().translate("wdl")

