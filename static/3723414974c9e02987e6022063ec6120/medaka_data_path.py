from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Medaka_Data_Path_V0_1_0 = CommandToolBuilder(tool="medaka_data_path", base_command=["medaka_data_path"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Data_Path_V0_1_0().translate("wdl", allow_empty_container=True)

