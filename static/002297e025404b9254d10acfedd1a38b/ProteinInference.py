from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Proteininference_V0_1_0 = CommandToolBuilder(tool="ProteinInference", base_command=["ProteinInference"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                                               Input file(s) (valid formats: 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                                              Output file (valid formats: 'idXML')")), ToolInput(tag="in_merge_runs", input_type=String(optional=True), prefix="-merge_runs", doc=InputDocumentation(doc="If your idXML contains multiple runs, merge them beforehand? (default: 'no' valid: 'no', 'all')")), ToolInput(tag="in_annotate_in_dist_groups", input_type=File(optional=True), prefix="-annotate_indist_groups", doc=InputDocumentation(doc="If you want to annotate indistinguishable protein groups, either for reporting or for group based quant. later. Only works with a single ID run in the file. (default: 'true' valid: 'true', 'false')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                                              Output file (valid formats: 'idXML')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteininference_V0_1_0().translate("wdl")

