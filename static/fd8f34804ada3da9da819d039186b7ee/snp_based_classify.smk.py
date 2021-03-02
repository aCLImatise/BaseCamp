from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Snp_Based_Classify_Smk_V0_1_0 = CommandToolBuilder(tool="snp_based_classify.smk", base_command=["snp_based_classify.smk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snp_Based_Classify_Smk_V0_1_0().translate("wdl", allow_empty_container=True)

