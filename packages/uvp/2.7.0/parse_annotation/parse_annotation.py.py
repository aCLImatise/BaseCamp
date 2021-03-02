from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parse_Annotation_Py_V0_1_0 = CommandToolBuilder(tool="parse_annotation.py", base_command=["parse_annotation.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parse_Annotation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

