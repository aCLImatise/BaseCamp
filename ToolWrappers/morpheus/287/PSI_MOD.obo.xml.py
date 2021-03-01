from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Psi_Mod_Obo_Xml_V0_1_0 = CommandToolBuilder(tool="PSI_MOD.obo.xml", base_command=["PSI-MOD.obo.xml"], inputs=[], outputs=[], container="quay.io/biocontainers/morpheus:287--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psi_Mod_Obo_Xml_V0_1_0().translate("wdl")

