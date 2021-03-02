from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Closegaps_Onedirectory_Fromminkmerlen_Perl_V0_1_0 = CommandToolBuilder(tool="closeGaps.oneDirectory.fromMinKmerLen.perl", base_command=["closeGaps.oneDirectory.fromMinKmerLen.perl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Closegaps_Onedirectory_Fromminkmerlen_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

