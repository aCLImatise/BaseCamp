from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Create_Model_Py_V0_1_0 = CommandToolBuilder(tool="create_model.py", base_command=["create_model.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Model_Py_V0_1_0().translate("wdl", allow_empty_container=True)

