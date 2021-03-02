from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Br_Biogetseq_Rb_V0_1_0 = CommandToolBuilder(tool="br_biogetseq.rb", base_command=["br_biogetseq.rb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Br_Biogetseq_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

