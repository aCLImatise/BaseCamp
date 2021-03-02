from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Peptides2Alternatives_Pl_V0_1_0 = CommandToolBuilder(tool="peptides2alternatives.pl", base_command=["peptides2alternatives.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peptides2Alternatives_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

