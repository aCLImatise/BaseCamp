from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Non_Conversion_V0_1_0 = CommandToolBuilder(tool="filter_non_conversion", base_command=["filter_non_conversion"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Non_Conversion_V0_1_0().translate("wdl", allow_empty_container=True)

