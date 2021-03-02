from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


List_Of_Files_V0_1_0 = CommandToolBuilder(tool="list_of_files", base_command=["list_of_files"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    List_Of_Files_V0_1_0().translate("wdl", allow_empty_container=True)

