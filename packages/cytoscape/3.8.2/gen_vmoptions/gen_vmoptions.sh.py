from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gen_Vmoptions_Sh_V0_1_0 = CommandToolBuilder(tool="gen_vmoptions.sh", base_command=["gen_vmoptions.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/cytoscape:3.8.2--hadc2ddb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gen_Vmoptions_Sh_V0_1_0().translate("wdl")

