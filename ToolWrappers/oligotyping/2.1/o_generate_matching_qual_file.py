from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Generate_Matching_Qual_File_V0_1_0 = CommandToolBuilder(tool="o_generate_matching_qual_file", base_command=["o-generate-matching-qual-file"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Generate_Matching_Qual_File_V0_1_0().translate("wdl", allow_empty_container=True)

