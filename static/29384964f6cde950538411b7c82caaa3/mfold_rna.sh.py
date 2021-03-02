from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mfold_Rna_Sh_V0_1_0 = CommandToolBuilder(tool="mfold_rna.sh", base_command=["mfold_rna.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mfold_Rna_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

