from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Setstopcodonfreqs_Pl_V0_1_0 = CommandToolBuilder(tool="setStopCodonFreqs.pl", base_command=["setStopCodonFreqs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Setstopcodonfreqs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

