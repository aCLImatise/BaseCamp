from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Metaboliteadductdecharger_V0_1_0 = CommandToolBuilder(tool="MetaboliteAdductDecharger", base_command=["MetaboliteAdductDecharger"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input file  (valid formats: 'featureXML')")), ToolInput(tag="in_out_cm", input_type=File(optional=True), prefix="-out_cm", doc=InputDocumentation(doc="Output consensus map (valid formats: 'consensusXML')")), ToolInput(tag="in_out_fm", input_type=File(optional=True), prefix="-out_fm", doc=InputDocumentation(doc="Output feature map (valid formats: 'featureXML')")), ToolInput(tag="in_out_pairs", input_type=File(optional=True), prefix="-outpairs", doc=InputDocumentation(doc="Output file (valid formats: 'consensusXML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out_pairs", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_pairs", type_hint=File()), doc=OutputDocumentation(doc="Output file (valid formats: 'consensusXML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metaboliteadductdecharger_V0_1_0().translate("wdl", allow_empty_container=True)

