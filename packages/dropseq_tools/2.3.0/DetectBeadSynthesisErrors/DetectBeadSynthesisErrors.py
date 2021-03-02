from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Detectbeadsynthesiserrors_V0_1_0 = CommandToolBuilder(tool="DetectBeadSynthesisErrors", base_command=["DetectBeadSynthesisErrors"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_barcode_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The data has multiple columns: the cell barcode, the number of UMIs, then one")), ToolInput(tag="in_bases_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Bases are ordered A,C,G,T for these columns.  An example output with a single base")), ToolInput(tag="in_errors_dot", input_type=String(), position=1, doc=InputDocumentation(doc="This is typically the last base of the UMI.  If set to null, program will use the"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Detectbeadsynthesiserrors_V0_1_0().translate("wdl", allow_empty_container=True)

