from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Run_Maxbin_Pl_V0_1_0 = CommandToolBuilder(tool="run_MaxBin.pl", base_command=["run_MaxBin.pl"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="(output file)")), ToolInput(tag="in_run_max_bin_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="-contig (contig file)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="(output file)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Maxbin_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

