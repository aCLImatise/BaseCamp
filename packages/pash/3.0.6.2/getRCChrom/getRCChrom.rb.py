from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getrcchrom_Rb_V0_1_0 = CommandToolBuilder(tool="getRCChrom.rb", base_command=["getRCChrom.rb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getrcchrom_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

