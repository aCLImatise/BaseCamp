from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Tsvfilter_V0_1_0 = CommandToolBuilder(tool="TsvFilter", base_command=["TsvFilter"], inputs=[ToolInput(tag="in_filter", input_type=String(optional=True), prefix="-filter", doc=InputDocumentation(doc="Filter string with column name, operation and value,e.g. 'depth > 17'.")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input TSV file. If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output TSV file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_numeric", input_type=Boolean(optional=True), prefix="-numeric", doc=InputDocumentation(doc="If set, column name is interpreted as a 1-based column number.\nDefault value: 'false'")), ToolInput(tag="in_invert_filterdefault_value", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Invert filter.\nDefault value: 'false'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"))], container="quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tsvfilter_V0_1_0().translate("wdl")

