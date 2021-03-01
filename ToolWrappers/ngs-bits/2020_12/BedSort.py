from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bedsort_V0_1_0 = CommandToolBuilder(tool="BedSort", base_command=["BedSort"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BED file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_with_name", input_type=Boolean(optional=True), prefix="-with_name", doc=InputDocumentation(doc="Uses name column (i.e. the 4th column) to sort if chr/start/end are equal.\nDefault value: 'false'")), ToolInput(tag="in_uniq", input_type=Boolean(optional=True), prefix="-uniq", doc=InputDocumentation(doc="If set, entries with the same chr/start/end are removed after sorting.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''"))], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedsort_V0_1_0().translate("wdl")

