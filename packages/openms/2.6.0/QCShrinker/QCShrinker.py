from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Qcshrinker_V0_1_0 = CommandToolBuilder(tool="QCShrinker", base_command=["QCShrinker"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*             Input qcml file (valid formats: 'qcML')")), ToolInput(tag="in_qp_accessions", input_type=String(optional=True), prefix="-qp_accessions", doc=InputDocumentation(doc="A list of cv accessions that should be removed. If empty, the usual suspects will be removed!")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="-name", doc=InputDocumentation(doc="The name of the target run or set that contains the requested quality parameter.")), ToolInput(tag="in_run", input_type=File(optional=True), prefix="-run", doc=InputDocumentation(doc="The file from which the name of the target run that contains the requested quality parameter is taken. This overrides the name parameter! (valid formats: 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*            Output extended/reduced qcML file (valid formats: 'qcML')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*            Output extended/reduced qcML file (valid formats: 'qcML')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qcshrinker_V0_1_0().translate("wdl")

