from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Aclocal_Bak_V0_1_0 = CommandToolBuilder(tool="aclocal.bak", base_command=["aclocal.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aclocal_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

