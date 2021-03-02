from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Release_Notes_V0_1_0 = CommandToolBuilder(tool="RELEASE_NOTES", base_command=["RELEASE_NOTES"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Release_Notes_V0_1_0().translate("wdl", allow_empty_container=True)

