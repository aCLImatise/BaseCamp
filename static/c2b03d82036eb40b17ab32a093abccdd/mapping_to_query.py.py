from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mapping_To_Query_Py_V0_1_0 = CommandToolBuilder(tool="mapping_to_query.py", base_command=["mapping_to_query.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapping_To_Query_Py_V0_1_0().translate("wdl", allow_empty_container=True)

