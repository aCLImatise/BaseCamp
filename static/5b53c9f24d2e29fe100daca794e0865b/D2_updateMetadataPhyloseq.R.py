from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


D2_Updatemetadataphyloseq_R_V0_1_0 = CommandToolBuilder(tool="D2_updateMetadataPhyloseq.R", base_command=["D2-updateMetadataPhyloseq.R"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    D2_Updatemetadataphyloseq_R_V0_1_0().translate("wdl")

