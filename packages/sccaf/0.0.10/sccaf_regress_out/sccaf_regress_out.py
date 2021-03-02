from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Sccaf_Regress_Out_V0_1_0 = CommandToolBuilder(tool="sccaf_regress_out", base_command=["sccaf-regress-out"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Path to input in AnnData or Loom")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Path for output file for annData with regression done.")), ToolInput(tag="in_keys_to_regress", input_type=String(optional=True), prefix="--keys-to-regress", doc=InputDocumentation(doc="Keys to regress out, comma separated. They should be\nin the anndata object.\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path for output file for annData with regression done."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sccaf_Regress_Out_V0_1_0().translate("wdl", allow_empty_container=True)

