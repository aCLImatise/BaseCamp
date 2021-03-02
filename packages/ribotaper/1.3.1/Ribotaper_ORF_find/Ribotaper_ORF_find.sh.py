from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ribotaper_Orf_Find_Sh_V0_1_0 = CommandToolBuilder(tool="Ribotaper_ORF_find.sh", base_command=["Ribotaper_ORF_find.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribotaper_Orf_Find_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

