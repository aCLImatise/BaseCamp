from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pgdspider2_Gui_V0_1_0 = CommandToolBuilder(tool="PGDSpider2_gui", base_command=["PGDSpider2-gui"], inputs=[], outputs=[], container="quay.io/biocontainers/pgdspider:2.1.1.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pgdspider2_Gui_V0_1_0().translate("wdl")

