from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Entrez_Phrase_Search_V0_1_0 = CommandToolBuilder(tool="entrez_phrase_search", base_command=["entrez-phrase-search"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Entrez_Phrase_Search_V0_1_0().translate("wdl")

