from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lasso_Enet_R_V0_1_0 = CommandToolBuilder(tool="lasso_enet.R", base_command=["lasso_enet.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lasso_Enet_R_V0_1_0().translate("wdl", allow_empty_container=True)

