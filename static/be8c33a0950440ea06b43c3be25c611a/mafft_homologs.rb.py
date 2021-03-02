from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mafft_Homologs_Rb_V0_1_0 = CommandToolBuilder(tool="mafft_homologs.rb", base_command=["mafft-homologs.rb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafft_Homologs_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

