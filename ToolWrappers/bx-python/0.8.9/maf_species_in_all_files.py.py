from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_Species_In_All_Files_Py_V0_1_0 = CommandToolBuilder(tool="maf_species_in_all_files.py", base_command=["maf_species_in_all_files.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Species_In_All_Files_Py_V0_1_0().translate("wdl", allow_empty_container=True)

