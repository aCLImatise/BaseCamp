from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mglenv_Csh_V0_1_0 = CommandToolBuilder(tool="mglenv.csh", base_command=["mglenv.csh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglenv_Csh_V0_1_0().translate("wdl", allow_empty_container=True)

