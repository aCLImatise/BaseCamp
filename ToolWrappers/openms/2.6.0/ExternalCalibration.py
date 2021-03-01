from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Array, String, Int

Externalcalibration_V0_1_0 = CommandToolBuilder(tool="ExternalCalibration", base_command=["ExternalCalibration"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input peak file (valid formats: 'mzML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*       Output file  (valid formats: 'mzML')")), ToolInput(tag="in_offset", input_type=Boolean(optional=True), prefix="-offset", doc=InputDocumentation(doc="Mass offset in ppm (default: '0.0')")), ToolInput(tag="in_slope", input_type=Boolean(optional=True), prefix="-slope", doc=InputDocumentation(doc="Slope (dependent on m/z) (default: '0.0')")), ToolInput(tag="in_power", input_type=Boolean(optional=True), prefix="-power", doc=InputDocumentation(doc="Power (dependent on m/z) (default: '0.0')")), ToolInput(tag="in_ms_level", input_type=Array(t=String(), optional=True), prefix="-ms_level", doc=InputDocumentation(doc="MS levels to apply the transformation onto. Scans with other levels remain unchanged. (default: '[1 2 3]')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*       Output file  (valid formats: 'mzML')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Externalcalibration_V0_1_0().translate("wdl")

