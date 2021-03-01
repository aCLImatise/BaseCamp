from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clstr_Size_Histogram_Pl_V0_1_0 = CommandToolBuilder(tool="clstr_size_histogram.pl", base_command=["clstr_size_histogram.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clstr_Size_Histogram_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

