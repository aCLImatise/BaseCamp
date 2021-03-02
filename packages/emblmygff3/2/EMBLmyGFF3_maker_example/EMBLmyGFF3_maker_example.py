from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Emblmygff3_Maker_Example_V0_1_0 = CommandToolBuilder(tool="EMBLmyGFF3_maker_example", base_command=["EMBLmyGFF3-maker-example"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Emblmygff3_Maker_Example_V0_1_0().translate("wdl", allow_empty_container=True)

