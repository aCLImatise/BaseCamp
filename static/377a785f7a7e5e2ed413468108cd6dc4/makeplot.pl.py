from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makeplot_Pl_V0_1_0 = CommandToolBuilder(tool="makeplot.pl", base_command=["makeplot.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makeplot_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

