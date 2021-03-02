from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Test_Genomebrowser_Pl_V0_1_0 = CommandToolBuilder(tool="test_GenomeBrowser.pl", base_command=["test_GenomeBrowser.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Genomebrowser_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

