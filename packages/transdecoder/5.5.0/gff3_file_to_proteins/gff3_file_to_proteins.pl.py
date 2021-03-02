from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gff3_File_To_Proteins_Pl_V0_1_0 = CommandToolBuilder(tool="gff3_file_to_proteins.pl", base_command=["gff3_file_to_proteins.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff3_File_To_Proteins_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

