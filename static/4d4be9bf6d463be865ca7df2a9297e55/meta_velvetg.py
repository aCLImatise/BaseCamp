from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Meta_Velvetg_V0_1_0 = CommandToolBuilder(tool="meta_velvetg", base_command=["meta-velvetg"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meta_Velvetg_V0_1_0().translate("wdl", allow_empty_container=True)

