from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Transformationevaluation_V0_1_0 = CommandToolBuilder(tool="TransformationEvaluation", base_command=["TransformationEvaluation"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input file containing the transformation description (valid formats: 'trafoXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output file containing original and transformed values; if empty, output is written to the screen (valid formats: 'trafoXML')")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="-min", doc=InputDocumentation(doc="Minimum value to transform (default: '0.0')")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="-max", doc=InputDocumentation(doc="Maximum value to transform (if at or below 'min', select a suitable maximum based on the transformation description) (default: '0.0')")), ToolInput(tag="in_step", input_type=Int(optional=True), prefix="-step", doc=InputDocumentation(doc="Step size between 'min' and 'max' (default: '1.0' min: '1.0e-03')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file containing original and transformed values; if empty, output is written to the screen (valid formats: 'trafoXML')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transformationevaluation_V0_1_0().translate("wdl")

