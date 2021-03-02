from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ca_Ikki_V5_Pl_V0_1_0 = CommandToolBuilder(tool="ca_ikki_v5.pl", base_command=["ca_ikki_v5.pl"], inputs=[ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_as_mdot_spec", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_estimated_genome_size", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ca_Ikki_V5_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

