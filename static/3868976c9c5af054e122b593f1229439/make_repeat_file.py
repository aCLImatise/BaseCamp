from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Repeat_File_V0_1_0 = CommandToolBuilder(tool="make_repeat_file", base_command=["make-repeat-file"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Repeat_File_V0_1_0().translate("wdl", allow_empty_container=True)

