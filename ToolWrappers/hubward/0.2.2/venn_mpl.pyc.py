from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Venn_Mpl_Pyc_V0_1_0 = CommandToolBuilder(tool="venn_mpl.pyc", base_command=["venn_mpl.pyc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Venn_Mpl_Pyc_V0_1_0().translate("wdl", allow_empty_container=True)

