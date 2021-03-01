from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Test_Pubmed_Index_V0_1_0 = CommandToolBuilder(tool="test_pubmed_index", base_command=["test-pubmed-index"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Pubmed_Index_V0_1_0().translate("wdl")

