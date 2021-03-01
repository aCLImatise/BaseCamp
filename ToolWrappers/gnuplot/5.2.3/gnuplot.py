from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gnuplot_V0_1_0 = CommandToolBuilder(tool="gnuplot", base_command=["gnuplot"], inputs=[], outputs=[], container="quay.io/biocontainers/gnuplot:5.2.3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gnuplot_V0_1_0().translate("wdl")

