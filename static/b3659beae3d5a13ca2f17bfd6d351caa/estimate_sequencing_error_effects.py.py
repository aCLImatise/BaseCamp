from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Estimate_Sequencing_Error_Effects_Py_V0_1_0 = CommandToolBuilder(tool="estimate_sequencing_error_effects.py", base_command=["estimate_sequencing_error_effects.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Estimate_Sequencing_Error_Effects_Py_V0_1_0().translate("wdl", allow_empty_container=True)

