from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Morpheus__Mzml_Mono__Pdb_V0_1_0 = CommandToolBuilder(tool="Morpheus (mzML Mono).pdb", base_command=["Morpheus (mzML Mono).pdb"], inputs=[], outputs=[], container="quay.io/biocontainers/morpheus:287--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Morpheus__Mzml_Mono__Pdb_V0_1_0().translate("wdl")

