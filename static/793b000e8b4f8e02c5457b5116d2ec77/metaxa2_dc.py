from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Metaxa2_Dc_V0_1_0 = CommandToolBuilder(tool="metaxa2_dc", base_command=["metaxa2_dc"], inputs=[ToolInput(tag="in__output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": Output file")), ToolInput(tag="in_column_containing_taxon_default", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc=": Column containing taxon data, default = 0")), ToolInput(tag="in_column_containing_data_default", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc=": Column containing count data, default = 1")), ToolInput(tag="in_string_removed_file", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc=": String to be removed from the file name for use as sample name. Regular expressions can be used. Default = '.level_[0-9].txt'")), ToolInput(tag="in_regular_expression_pattern", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc=": Regular expression pattern for selecting the sample name from the file name. Default = '.*' (will cover full file name)")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc=": displays this help message")), ToolInput(tag="in_bugs", input_type=Boolean(optional=True), prefix="--bugs", doc=InputDocumentation(doc=": displays the bug fixes and known bugs in this version of Metaxa")), ToolInput(tag="in_license", input_type=Boolean(optional=True), prefix="--license", doc=InputDocumentation(doc=": displays licensing information")), ToolInput(tag="in_input_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out__output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_file", type_hint=File()), doc=OutputDocumentation(doc=": Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metaxa2_Dc_V0_1_0().translate("wdl", allow_empty_container=True)

