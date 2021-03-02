from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Closegaps_Onedirectory_Perl_V0_1_0 = CommandToolBuilder(tool="closeGaps.oneDirectory.perl", base_command=["closeGaps.oneDirectory.perl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Closegaps_Onedirectory_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

