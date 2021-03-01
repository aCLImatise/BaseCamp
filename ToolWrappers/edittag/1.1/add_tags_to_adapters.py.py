from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Add_Tags_To_Adapters_Py_V0_1_0 = CommandToolBuilder(tool="add_tags_to_adapters.py", base_command=["add_tags_to_adapters.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Tags_To_Adapters_Py_V0_1_0().translate("wdl", allow_empty_container=True)

