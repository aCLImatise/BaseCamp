from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastatranslate_V0_1_0 = CommandToolBuilder(tool="fastatranslate", base_command=["fastatranslate"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastatranslate_V0_1_0().translate("wdl", allow_empty_container=True)

