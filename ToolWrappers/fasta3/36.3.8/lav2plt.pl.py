from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lav2Plt_Pl_V0_1_0 = CommandToolBuilder(tool="lav2plt.pl", base_command=["lav2plt.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lav2Plt_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

