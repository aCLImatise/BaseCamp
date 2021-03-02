from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Download_Generate_Bberg_Ref_Files_Pl_V0_1_0 = CommandToolBuilder(tool="download_generate_bberg_ref_files.pl", base_command=["download_generate_bberg_ref_files.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Generate_Bberg_Ref_Files_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

