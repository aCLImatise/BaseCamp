from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mafft_Sparsecore_Rb_V0_1_0 = CommandToolBuilder(tool="mafft_sparsecore.rb", base_command=["mafft-sparsecore.rb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafft_Sparsecore_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

