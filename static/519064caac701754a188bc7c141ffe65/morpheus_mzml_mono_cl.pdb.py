from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Morpheus_Mzml_Mono_Cl_Pdb_V0_1_0 = CommandToolBuilder(tool="morpheus_mzml_mono_cl.pdb", base_command=["morpheus_mzml_mono_cl.pdb"], inputs=[], outputs=[], container="quay.io/biocontainers/morpheus:287--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Morpheus_Mzml_Mono_Cl_Pdb_V0_1_0().translate("wdl")

