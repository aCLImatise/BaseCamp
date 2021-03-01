from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Download_Taxonomy_Sh_V0_1_0 = CommandToolBuilder(tool="download_taxonomy.sh", base_command=["download-taxonomy.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Taxonomy_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

