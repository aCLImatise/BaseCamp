from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gff3_File_To_Bed_Pl_V0_1_0 = CommandToolBuilder(tool="gff3_file_to_bed.pl", base_command=["gff3_file_to_bed.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gff3_File_To_Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

