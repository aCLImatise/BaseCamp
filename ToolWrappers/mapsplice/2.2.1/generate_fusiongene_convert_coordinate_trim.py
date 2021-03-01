from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Generate_Fusiongene_Convert_Coordinate_Trim_V0_1_0 = CommandToolBuilder(tool="generate_fusiongene_convert_coordinate_trim", base_command=["generate_fusiongene_convert_coordinate_trim"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Fusiongene_Convert_Coordinate_Trim_V0_1_0().translate("wdl", allow_empty_container=True)

