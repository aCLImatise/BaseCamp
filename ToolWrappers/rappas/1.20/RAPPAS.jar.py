from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rappas_Jar_V0_1_0 = CommandToolBuilder(tool="RAPPAS.jar", base_command=["RAPPAS.jar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rappas_Jar_V0_1_0().translate("wdl", allow_empty_container=True)

