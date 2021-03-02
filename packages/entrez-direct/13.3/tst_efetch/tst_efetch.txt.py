from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tst_Efetch_Txt_V0_1_0 = CommandToolBuilder(tool="tst_efetch.txt", base_command=["tst-efetch.txt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tst_Efetch_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

