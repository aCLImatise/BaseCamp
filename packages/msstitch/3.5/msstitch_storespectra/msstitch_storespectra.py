from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String

Msstitch_Storespectra_V0_1_0 = CommandToolBuilder(tool="msstitch_storespectra", base_command=["msstitch", "storespectra"], inputs=[ToolInput(tag="in_dbfile", input_type=File(optional=True), prefix="--dbfile", doc=InputDocumentation(doc="Database lookup file")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_spectra", input_type=Array(t=String(), optional=True), prefix="--spectra", doc=InputDocumentation(doc="Spectra files in mzML format. Multiple files can be\nspecified, if order is important, e.g. when matching\nthem with quant data, the order will be their input\norder at the command line.")), ToolInput(tag="in_set_names", input_type=Array(t=String(), optional=True), prefix="--setnames", doc=InputDocumentation(doc="Names of biological sets. Can be specified with\nquotation marks if spaces are used\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container="quay.io/biocontainers/msstitch:3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msstitch_Storespectra_V0_1_0().translate("wdl")

