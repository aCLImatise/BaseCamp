from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Modifications_Tsv_V0_1_0 = CommandToolBuilder(tool="modifications.tsv", base_command=["modifications.tsv"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Modifications_Tsv_V0_1_0().translate("wdl", allow_empty_container=True)

