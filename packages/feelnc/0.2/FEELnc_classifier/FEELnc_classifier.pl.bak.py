from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Feelnc_Classifier_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="FEELnc_classifier.pl.bak", base_command=["FEELnc_classifier.pl.bak"], inputs=[], outputs=[], container="quay.io/biocontainers/feelnc:0.2--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Feelnc_Classifier_Pl_Bak_V0_1_0().translate("wdl")

