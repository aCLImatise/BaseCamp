from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Vcfcheck_V0_1_0 = CommandToolBuilder(tool="VcfCheck", base_command=["VcfCheck"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input VCF file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_lines", input_type=Int(optional=True), prefix="-lines", doc=InputDocumentation(doc="Number of lines to check in the VCF file (unlimited if 0)\nDefault value: '1000'")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="-ref", doc=InputDocumentation(doc="Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\nDefault value: ''")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="-info", doc=InputDocumentation(doc="Add general information about the input file to the output.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfcheck_V0_1_0().translate("wdl", allow_empty_container=True)

