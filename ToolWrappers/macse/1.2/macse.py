from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Macse_V0_1_0 = CommandToolBuilder(tool="macse", base_command=["macse"], inputs=[ToolInput(tag="in_prog", input_type=String(optional=True), prefix="-prog", doc=InputDocumentation(doc="the program to be used among those proposed by MACSE toolkit")), ToolInput(tag="in_x_mx_six_zero_zero_m", input_type=Int(optional=True), prefix="-Xmx600m", doc=InputDocumentation(doc="")), ToolInput(tag="in_jar", input_type=Boolean(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_align_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="alignTwoProfiles")), ToolInput(tag="in_enrich_alignment", input_type=String(), position=1, doc=InputDocumentation(doc="refineAlignment")), ToolInput(tag="in_export_alignment", input_type=String(), position=2, doc=InputDocumentation(doc="translateNT2AA")), ToolInput(tag="in_report_gaps_aat_wont", input_type=Int(), position=3, doc=InputDocumentation(doc="splitAlignment")), ToolInput(tag="in_remove_seq_causing_gap_py_sites", input_type=String(), position=4, doc=InputDocumentation(doc="trimSequences"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Macse_V0_1_0().translate("wdl", allow_empty_container=True)

