from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mit_License_Commandline_Txt_V0_1_0 = CommandToolBuilder(tool="MIT_License.CommandLine.txt", base_command=["MIT_License.CommandLine.txt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mit_License_Commandline_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

