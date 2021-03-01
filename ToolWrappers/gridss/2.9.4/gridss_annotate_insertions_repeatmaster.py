from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gridss_Annotate_Insertions_Repeatmaster_V0_1_0 = CommandToolBuilder(tool="gridss_annotate_insertions_repeatmaster", base_command=["gridss_annotate_insertions_repeatmaster"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gridss_Annotate_Insertions_Repeatmaster_V0_1_0().translate("wdl", allow_empty_container=True)

