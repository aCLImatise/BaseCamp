from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Anvi_Script_Get_Collection_Info_V0_1_0 = CommandToolBuilder(tool="anvi_script_get_collection_info", base_command=["anvi-script-get-collection-info"], inputs=[], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Get_Collection_Info_V0_1_0().translate("wdl")

