from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fastqmidparser_V0_1_0 = CommandToolBuilder(tool="FastqMidParser", base_command=["FastqMidParser"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input gzipped FASTQ file.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output TXT file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_lines", input_type=Int(optional=True), prefix="-lines", doc=InputDocumentation(doc="The number of FASTQ entries in the input file to parse. 0 is unlimited.\nDefault value: '1000'")), ToolInput(tag="in_mids", input_type=Int(optional=True), prefix="-mids", doc=InputDocumentation(doc="The number of top-ranking MIDs to print. 0 is unlimited.\nDefault value: '20'")), ToolInput(tag="in_sheet", input_type=File(optional=True), prefix="-sheet", doc=InputDocumentation(doc="Optional sample sheet CSV file as provided to CASAVA. If given, the closest match in the sample sheet is printed after each MID.\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output TXT file. If unset, writes to STDOUT.\nDefault value: ''"))], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqmidparser_V0_1_0().translate("wdl")

