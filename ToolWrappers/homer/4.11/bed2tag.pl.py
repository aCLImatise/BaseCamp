from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bed2Tag_Pl_V0_1_0 = CommandToolBuilder(tool="bed2tag.pl", base_command=["bed2tag.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed2Tag_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

