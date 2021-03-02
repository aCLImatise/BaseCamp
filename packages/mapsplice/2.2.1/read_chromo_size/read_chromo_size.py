from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Read_Chromo_Size_V0_1_0 = CommandToolBuilder(tool="read_chromo_size", base_command=["read_chromo_size"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Chromo_Size_V0_1_0().translate("wdl", allow_empty_container=True)

