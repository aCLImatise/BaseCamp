from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Minia_Nooverlap_V0_1_0 = CommandToolBuilder(tool="minia_nooverlap", base_command=["minia_nooverlap"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minia_Nooverlap_V0_1_0().translate("wdl", allow_empty_container=True)

