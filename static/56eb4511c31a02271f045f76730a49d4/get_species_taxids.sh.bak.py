from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Species_Taxids_Sh_Bak_V0_1_0 = CommandToolBuilder(tool="get_species_taxids.sh.bak", base_command=["get_species_taxids.sh.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Species_Taxids_Sh_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

