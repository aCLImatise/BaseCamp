from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Incremental_Count_Vectorizer_Py_V0_1_0 = CommandToolBuilder(tool="incremental_count_vectorizer.py", base_command=["incremental_count_vectorizer.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Incremental_Count_Vectorizer_Py_V0_1_0().translate("wdl", allow_empty_container=True)

