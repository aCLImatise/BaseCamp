from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Radpainter_Paint_V0_1_0 = CommandToolBuilder(tool="RADpainter_paint", base_command=["RADpainter", "paint"], inputs=[ToolInput(tag="in_ploidy", input_type=Int(optional=True), prefix="--ploidy", doc=InputDocumentation(doc="ploidy of the species being analysed (default is 2N, i.e. diploid)")), ToolInput(tag="in_chr", input_type=Boolean(optional=True), prefix="--chr", doc=InputDocumentation(doc="output per-chromosome coancestry matrices")), ToolInput(tag="in_run_name", input_type=File(optional=True), prefix="--run-name", doc=InputDocumentation(doc="run-name will be included in the output file name(s)")), ToolInput(tag="in_missing_two", input_type=Boolean(optional=True), prefix="--missing2", doc=InputDocumentation(doc="(deprecated) output a conancestry matrix with missing data treated\nas if any pair of individuals are equally distant")), ToolInput(tag="in_input_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_run_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_run_name", type_hint=File()), doc=OutputDocumentation(doc="run-name will be included in the output file name(s)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Radpainter_Paint_V0_1_0().translate("wdl", allow_empty_container=True)

