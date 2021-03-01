from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bcbio_Variation_Recall_V0_1_0 = CommandToolBuilder(tool="bcbio_variation_recall", base_command=["bcbio-variation-recall"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Variation_Recall_V0_1_0().translate("wdl", allow_empty_container=True)

