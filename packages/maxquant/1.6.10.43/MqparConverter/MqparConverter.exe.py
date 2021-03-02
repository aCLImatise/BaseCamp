from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mqparconverter_Exe_V0_1_0 = CommandToolBuilder(tool="MqparConverter.exe", base_command=["MqparConverter.exe"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mqparconverter_Exe_V0_1_0().translate("wdl", allow_empty_container=True)

