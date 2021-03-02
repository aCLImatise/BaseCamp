from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bseqc2Mbiasplot_R_V0_1_0 = CommandToolBuilder(tool="bseqc2mbiasplot.R", base_command=["bseqc2mbiasplot.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bseqc2Mbiasplot_R_V0_1_0().translate("wdl", allow_empty_container=True)

