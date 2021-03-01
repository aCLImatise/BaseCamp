from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rsem_Build_Read_Index_V0_1_0 = CommandToolBuilder(tool="rsem_build_read_index", base_command=["rsem-build-read-index"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Build_Read_Index_V0_1_0().translate("wdl", allow_empty_container=True)

