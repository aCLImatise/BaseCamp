from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Aln2Basecnt_V0_1_0 = CommandToolBuilder(tool="aln2basecnt", base_command=["aln2basecnt"], inputs=[ToolInput(tag="in_base_cnt", input_type=File(optional=True), prefix="--basecnt", doc=InputDocumentation(doc="bases count table output file")), ToolInput(tag="in_coverage", input_type=File(optional=True), prefix="--coverage", doc=InputDocumentation(doc="coverage table output file")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Patient/sample identifiers to use in coverage column\ntitle instead of 'coverage'")), ToolInput(tag="in_alphabet", input_type=String(optional=True), prefix="--alphabet", doc=InputDocumentation(doc="alphabet to use")), ToolInput(tag="in_jsonini__stats", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="/JSON/INI, --stats YAML/JSON/INI\nfile to write stats to"))], outputs=[ToolOutput(tag="out_base_cnt", output_type=File(optional=True), selector=InputSelector(input_to_select="in_base_cnt", type_hint=File()), doc=OutputDocumentation(doc="bases count table output file")), ToolOutput(tag="out_coverage", output_type=File(optional=True), selector=InputSelector(input_to_select="in_coverage", type_hint=File()), doc=OutputDocumentation(doc="coverage table output file"))], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aln2Basecnt_V0_1_0().translate("wdl")

