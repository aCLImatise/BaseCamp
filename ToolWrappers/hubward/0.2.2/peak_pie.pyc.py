from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Peak_Pie_Pyc_V0_1_0 = CommandToolBuilder(tool="peak_pie.pyc", base_command=["peak_pie.pyc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peak_Pie_Pyc_V0_1_0().translate("wdl", allow_empty_container=True)

