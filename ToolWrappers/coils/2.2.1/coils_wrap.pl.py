from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Coils_Wrap_Pl_V0_1_0 = CommandToolBuilder(tool="coils_wrap.pl", base_command=["coils-wrap.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coils_Wrap_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

