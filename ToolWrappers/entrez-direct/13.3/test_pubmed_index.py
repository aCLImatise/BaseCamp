from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Test_Pubmed_Index_V0_1_0 = CommandToolBuilder(tool="test_pubmed_index", base_command=["test-pubmed-index"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Pubmed_Index_V0_1_0().translate("wdl", allow_empty_container=True)

