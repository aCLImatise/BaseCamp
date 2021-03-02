from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Tsvmerge_V0_1_0 = CommandToolBuilder(tool="TsvMerge", base_command=["TsvMerge"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input TSV files that are merged. If only one file is given, each line in this file is interpreted as an input file path.")), ToolInput(tag="in_cols", input_type=String(optional=True), prefix="-cols", doc=InputDocumentation(doc="Comma-separated list of column names used as key for merging.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_numeric", input_type=Boolean(optional=True), prefix="-numeric", doc=InputDocumentation(doc="If set, column names are interpreted as 1-based column numbers.\nDefault value: 'false'")), ToolInput(tag="in_simple", input_type=Boolean(optional=True), prefix="-simple", doc=InputDocumentation(doc="Fast and memory-efficient mode for merging files that are ordered in the same way and have no missing lines.\nDefault value: 'false'")), ToolInput(tag="in_mv", input_type=File(optional=True), prefix="-mv", doc=InputDocumentation(doc="Missing value, i.e. value that is inserted when key is missing in a file.\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tsvmerge_V0_1_0().translate("wdl", allow_empty_container=True)

