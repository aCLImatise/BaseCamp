from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Loeb_2_0_Sh_V0_1_0 = CommandToolBuilder(tool="loeb_2.0.sh", base_command=["loeb-2.0.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Loeb_2_0_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

