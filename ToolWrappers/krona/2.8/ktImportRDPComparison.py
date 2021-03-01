from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktimportrdpcomparison_V0_1_0 = CommandToolBuilder(tool="ktImportRDPComparison", base_command=["ktImportRDPComparison"], inputs=[ToolInput(tag="in_rdp_comparison", input_type=String(), position=0, doc=InputDocumentation(doc="RDP comparison result downloaded as text.")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc="A name for each library to appear in the chart. The default\nis 'Library [1/2]'.\n_________"))], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimportrdpcomparison_V0_1_0().translate("wdl")

