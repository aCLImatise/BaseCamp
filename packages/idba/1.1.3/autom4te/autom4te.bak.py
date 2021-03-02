from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Autom4Te_Bak_V0_1_0 = CommandToolBuilder(tool="autom4te.bak", base_command=["autom4te.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Autom4Te_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

