from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Snpeffannotate_Py_V0_1_0 = CommandToolBuilder(tool="snpEffAnnotate.py", base_command=["snpEffAnnotate.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpeffannotate_Py_V0_1_0().translate("wdl", allow_empty_container=True)

