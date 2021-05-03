from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Edit_Imgt_File_Pl_V0_1_0 = CommandToolBuilder(tool="edit_imgt_file.pl", base_command=["edit_imgt_file.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/igblast:1.17.1--h388d1fa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edit_Imgt_File_Pl_V0_1_0().translate("wdl")

