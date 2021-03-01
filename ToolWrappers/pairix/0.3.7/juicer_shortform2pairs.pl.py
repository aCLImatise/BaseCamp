from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Juicer_Shortform2Pairs_Pl_V0_1_0 = CommandToolBuilder(tool="juicer_shortform2pairs.pl", base_command=["juicer_shortform2pairs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Juicer_Shortform2Pairs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

