from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Transdecoder_Longorfs_V0_1_0 = CommandToolBuilder(tool="TransDecoder.LongOrfs", base_command=["TransDecoder.LongOrfs"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transdecoder_Longorfs_V0_1_0().translate("wdl", allow_empty_container=True)

