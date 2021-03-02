from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Libtimsdata_So_V0_1_0 = CommandToolBuilder(tool="libtimsdata.so", base_command=["libtimsdata.so"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Libtimsdata_So_V0_1_0().translate("wdl", allow_empty_container=True)

