from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Extract_Mirnas_Pl_V0_1_0 = CommandToolBuilder(tool="extract_miRNAs.pl", base_command=["extract_miRNAs.pl"], inputs=[ToolInput(tag="in_e_dot_gdot", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_perl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Mirnas_Pl_V0_1_0().translate("wdl")

