from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tst_Esearch_Txt_V0_1_0 = CommandToolBuilder(tool="tst_esearch.txt", base_command=["tst-esearch.txt"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tst_Esearch_Txt_V0_1_0().translate("wdl")

