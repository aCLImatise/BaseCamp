from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Crux_Percolator_0_01__V0_1_0 = CommandToolBuilder(tool="crux_percolator_0.01.", base_command=["crux", "percolator", "0.01."], inputs=[ToolInput(tag="in_crux", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_percolator", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_peptide_spectrum_matches", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Percolator_0_01__V0_1_0().translate("wdl", allow_empty_container=True)

