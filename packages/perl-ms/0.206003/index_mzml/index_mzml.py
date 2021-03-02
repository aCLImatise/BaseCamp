from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Index_Mzml_V0_1_0 = CommandToolBuilder(tool="index_mzml", base_command=["index_mzml"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Index_Mzml_V0_1_0().translate("wdl", allow_empty_container=True)

