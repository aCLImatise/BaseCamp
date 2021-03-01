from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Library_Sh_V0_1_0 = CommandToolBuilder(tool="filter_library.sh", base_command=["filter_library.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Library_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

