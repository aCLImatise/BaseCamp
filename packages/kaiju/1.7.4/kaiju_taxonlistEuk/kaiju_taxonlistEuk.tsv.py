from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Kaiju_Taxonlisteuk_Tsv_V0_1_0 = CommandToolBuilder(tool="kaiju_taxonlistEuk.tsv", base_command=["kaiju-taxonlistEuk.tsv"], inputs=[], outputs=[], container="quay.io/biocontainers/kaiju:1.7.4--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Taxonlisteuk_Tsv_V0_1_0().translate("wdl")

