from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Bedannotategc_V0_1_0 = CommandToolBuilder(tool="BedAnnotateGC", base_command=["BedAnnotateGC"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BED file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="-ref", doc=InputDocumentation(doc="Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini' file is used.\nDefault value: ''")), ToolInput(tag="in_extend", input_type=Int(optional=True), prefix="-extend", doc=InputDocumentation(doc="Bases to extend around the input region for calculating the GC content.\nDefault value: '0'")), ToolInput(tag="in_clear", input_type=Boolean(optional=True), prefix="-clear", doc=InputDocumentation(doc="Clear all annotations present in the input file.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedannotategc_V0_1_0().translate("wdl", allow_empty_container=True)

