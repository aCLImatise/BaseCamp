from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Drawgram_Jar_V0_1_0 = CommandToolBuilder(tool="DrawGram.jar", base_command=["DrawGram.jar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drawgram_Jar_V0_1_0().translate("wdl", allow_empty_container=True)

