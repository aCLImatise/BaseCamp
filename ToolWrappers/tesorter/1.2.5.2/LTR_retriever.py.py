from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ltr_Retriever_Py_V0_1_0 = CommandToolBuilder(tool="LTR_retriever.py", base_command=["LTR_retriever.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ltr_Retriever_Py_V0_1_0().translate("wdl", allow_empty_container=True)

