from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dataset_Manager_Py_V0_1_0 = CommandToolBuilder(tool="dataset_manager.py", base_command=["dataset_manager.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dataset_Manager_Py_V0_1_0().translate("wdl", allow_empty_container=True)

