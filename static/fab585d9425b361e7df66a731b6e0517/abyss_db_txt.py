from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Abyss_Db_Txt_V0_1_0 = CommandToolBuilder(tool="abyss_db_txt", base_command=["abyss-db-txt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Db_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

