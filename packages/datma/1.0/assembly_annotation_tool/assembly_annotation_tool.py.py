from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Assembly_Annotation_Tool_Py_V0_1_0 = CommandToolBuilder(tool="assembly_annotation_tool.py", base_command=["assembly_annotation_tool.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assembly_Annotation_Tool_Py_V0_1_0().translate("wdl", allow_empty_container=True)

