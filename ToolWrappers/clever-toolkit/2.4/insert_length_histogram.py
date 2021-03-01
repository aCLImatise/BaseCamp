from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Insert_Length_Histogram_V0_1_0 = CommandToolBuilder(tool="insert_length_histogram", base_command=["insert-length-histogram"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Insert_Length_Histogram_V0_1_0().translate("wdl", allow_empty_container=True)

