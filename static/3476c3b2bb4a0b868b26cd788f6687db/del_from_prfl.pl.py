from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Del_From_Prfl_Pl_V0_1_0 = CommandToolBuilder(tool="del_from_prfl.pl", base_command=["del_from_prfl.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Del_From_Prfl_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

