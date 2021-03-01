from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gem_Mappability_Retriever_V0_1_0 = CommandToolBuilder(tool="gem_mappability_retriever", base_command=["gem-mappability-retriever"], inputs=[], outputs=[], container="quay.io/biocontainers/gem2:20200110--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_Mappability_Retriever_V0_1_0().translate("wdl")

