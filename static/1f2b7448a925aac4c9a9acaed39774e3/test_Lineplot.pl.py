from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Test_Lineplot_Pl_V0_1_0 = CommandToolBuilder(tool="test_Lineplot.pl", base_command=["test_Lineplot.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Lineplot_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

