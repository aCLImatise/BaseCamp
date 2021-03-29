from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hash_List_V0_1_0 = CommandToolBuilder(tool="hash_list", base_command=["hash_list"], inputs=[], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hash_List_V0_1_0().translate("wdl")

