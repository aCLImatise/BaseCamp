from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Design_Edit_Metric_Tags_Py_V0_1_0 = CommandToolBuilder(tool="design_edit_metric_tags.py", base_command=["design_edit_metric_tags.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Design_Edit_Metric_Tags_Py_V0_1_0().translate("wdl", allow_empty_container=True)

