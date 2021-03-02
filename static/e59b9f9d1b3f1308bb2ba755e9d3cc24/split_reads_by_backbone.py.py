from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Split_Reads_By_Backbone_Py_V0_1_0 = CommandToolBuilder(tool="split_reads_by_backbone.py", base_command=["split_reads_by_backbone.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Reads_By_Backbone_Py_V0_1_0().translate("wdl", allow_empty_container=True)

