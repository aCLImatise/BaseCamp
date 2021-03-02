from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean

Idripper_V0_1_0 = CommandToolBuilder(tool="IDRipper", base_command=["IDRipper"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="*        Input file, in which the protein/peptide identifications must be tagged with 'file_origin' (valid formats: 'idXML')")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="The path to this file is used as the output directory. (valid formats: 'idXML')")), ToolInput(tag="in_out_path", input_type=Directory(optional=True), prefix="-out_path", doc=InputDocumentation(doc="Directory for the output files after ripping according to 'file_origin'. If 'out_path' is set, 'out' is ignored.")), ToolInput(tag="in_ini", input_type=File(optional=True), prefix="-ini", doc=InputDocumentation(doc="Use the given TOPP INI file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="Sets the number of threads allowed to be used by the TOPP tool (default: '1')")), ToolInput(tag="in_write_ini", input_type=File(optional=True), prefix="-write_ini", doc=InputDocumentation(doc="Writes the default configuration file")), ToolInput(tag="in_helphelp", input_type=Boolean(optional=True), prefix="--helphelp", doc=InputDocumentation(doc="Shows all options (including advanced)"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="The path to this file is used as the output directory. (valid formats: 'idXML')")), ToolOutput(tag="out_out_path", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_path", type_hint=File()), doc=OutputDocumentation(doc="Directory for the output files after ripping according to 'file_origin'. If 'out_path' is set, 'out' is ignored."))], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idripper_V0_1_0().translate("wdl")

