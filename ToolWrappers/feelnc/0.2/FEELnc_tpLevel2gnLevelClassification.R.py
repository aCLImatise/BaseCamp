from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Feelnc_Tplevel2Gnlevelclassification_R_V0_1_0 = CommandToolBuilder(tool="FEELnc_tpLevel2gnLevelClassification.R", base_command=["FEELnc_tpLevel2gnLevelClassification.R"], inputs=[], outputs=[], container="quay.io/biocontainers/feelnc:0.2--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Feelnc_Tplevel2Gnlevelclassification_R_V0_1_0().translate("wdl")

