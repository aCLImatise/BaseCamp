from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Multiline_To_Xa_V0_1_0 = CommandToolBuilder(tool="multiline_to_xa", base_command=["multiline-to-xa"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multiline_To_Xa_V0_1_0().translate("wdl", allow_empty_container=True)

