from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gem_Retriever_V0_1_0 = CommandToolBuilder(tool="gem_retriever", base_command=["gem-retriever"], inputs=[], outputs=[], container="quay.io/biocontainers/gem2:20200110--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_Retriever_V0_1_0().translate("wdl")

