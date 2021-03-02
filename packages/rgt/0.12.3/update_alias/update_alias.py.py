from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Update_Alias_Py_V0_1_0 = CommandToolBuilder(tool="update_alias.py", base_command=["update_alias.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Update_Alias_Py_V0_1_0().translate("wdl", allow_empty_container=True)

