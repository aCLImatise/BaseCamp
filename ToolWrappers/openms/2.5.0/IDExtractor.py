from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Idextractor_V0_1_0 = CommandToolBuilder(tool="IDExtractor", base_command=["IDExtractor"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*                        Input file (valid formats: 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*                       Output file (valid formats: 'idXML')")), ToolInput(tag="in_number_of_peptides", input_type=Int(optional=True), prefix="-number_of_peptides", doc=InputDocumentation(doc="Number of randomly chosen peptides (default: '10' min: '1')")), ToolInput(tag="in_number_of_rand_in_v_ok_ations", input_type=Int(optional=True), prefix="-number_of_rand_invokations", doc=InputDocumentation(doc="Number of rand invocations before random draw (default: '0' min: '0')")), ToolInput(tag="in_best_hits", input_type=Boolean(optional=True), prefix="-best_hits", doc=InputDocumentation(doc="If this flag is set the best n peptides are chosen.")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*                       Output file (valid formats: 'idXML')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idextractor_V0_1_0().translate("wdl", allow_empty_container=True)

