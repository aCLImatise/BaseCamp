from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clstr_Quality_Eval_By_Link_Pl_V0_1_0 = CommandToolBuilder(tool="clstr_quality_eval_by_link.pl", base_command=["clstr_quality_eval_by_link.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clstr_Quality_Eval_By_Link_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

