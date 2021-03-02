from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert_Zero_One_Based_V0_1_0 = CommandToolBuilder(tool="convert_zero_one_based", base_command=["convert_zero_one_based"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Zero_One_Based_V0_1_0().translate("wdl", allow_empty_container=True)

