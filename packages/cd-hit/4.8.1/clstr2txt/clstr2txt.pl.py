from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clstr2Txt_Pl_V0_1_0 = CommandToolBuilder(tool="clstr2txt.pl", base_command=["clstr2txt.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clstr2Txt_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

