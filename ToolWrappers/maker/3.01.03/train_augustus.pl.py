from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Train_Augustus_Pl_V0_1_0 = CommandToolBuilder(tool="train_augustus.pl", base_command=["train_augustus.pl"], inputs=[ToolInput(tag="in_cpus", input_type=String(), position=0, doc=InputDocumentation(doc="<INT>    Number of CPUs to use for training")), ToolInput(tag="in_max", input_type=Int(), position=1, doc=InputDocumentation(doc="<INT>    Maximum models to use for optimization"))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Train_Augustus_Pl_V0_1_0().translate("wdl")

