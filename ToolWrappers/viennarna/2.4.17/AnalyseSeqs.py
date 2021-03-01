from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Analyseseqs_V0_1_0 = CommandToolBuilder(tool="AnalyseSeqs", base_command=["AnalyseSeqs"], inputs=[], outputs=[], container="quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Analyseseqs_V0_1_0().translate("wdl")

