from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blast_Formatter_V0_1_0 = CommandToolBuilder(tool="blast_formatter", base_command=["blast_formatter"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blast_Formatter_V0_1_0().translate("wdl", allow_empty_container=True)

