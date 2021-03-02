from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Mztabexporter_V0_1_0 = CommandToolBuilder(tool="MzTabExporter", base_command=["MzTabExporter"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input files used to generate the mzTab file. (valid formats: 'featureXML', 'consensusXML', 'idXML', 'mzid')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="*         Output file (mzTab) (valid formats: 'mzTab')")), ToolInput(tag="in_opt_columns", input_type=String(optional=True), prefix="-opt_columns", doc=InputDocumentation(doc="Add optional columns which are not part of the mzTab standard. (default: '[subfeatures]' valid: 'subfeatures')")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="*         Output file (mzTab) (valid formats: 'mzTab')"))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mztabexporter_V0_1_0().translate("wdl")

