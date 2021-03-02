from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


00_Readme_Txt_V0_1_0 = CommandToolBuilder(tool="00_README.txt", base_command=["00_README.txt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    00_Readme_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

