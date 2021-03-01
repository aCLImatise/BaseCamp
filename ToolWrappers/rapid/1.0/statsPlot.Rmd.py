from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Statsplot_Rmd_V0_1_0 = CommandToolBuilder(tool="statsPlot.Rmd", base_command=["statsPlot.Rmd"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Statsplot_Rmd_V0_1_0().translate("wdl", allow_empty_container=True)

