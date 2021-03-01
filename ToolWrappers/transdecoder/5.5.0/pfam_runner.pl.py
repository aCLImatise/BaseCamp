from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pfam_Runner_Pl_V0_1_0 = CommandToolBuilder(tool="pfam_runner.pl", base_command=["pfam_runner.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pfam_Runner_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

