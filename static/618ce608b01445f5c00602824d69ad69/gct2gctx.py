from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Gct2Gctx_V0_1_0 = CommandToolBuilder(tool="gct2gctx", base_command=["gct2gctx"], inputs=[ToolInput(tag="in_filename", input_type=File(optional=True), prefix="-filename", doc=InputDocumentation(doc=".gct file that you would like to convert to .gctx\n(default: None)")), ToolInput(tag="in_output_file_path", input_type=File(optional=True), prefix="-output_filepath", doc=InputDocumentation(doc="out path/name for output gctx file. Default is just to\nmodify the extension (default: None)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="Whether to print a bunch of output. (default: False)")), ToolInput(tag="in_row_an_not_path", input_type=File(optional=True), prefix="-row_annot_path", doc=InputDocumentation(doc="Path to annotations file for rows (default: None)")), ToolInput(tag="in_col_an_not_path", input_type=File(optional=True), prefix="-col_annot_path", doc=InputDocumentation(doc="Path to annotations file for columns (default: None)\n"))], outputs=[ToolOutput(tag="out_output_file_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_path", type_hint=File()), doc=OutputDocumentation(doc="out path/name for output gctx file. Default is just to\nmodify the extension (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gct2Gctx_V0_1_0().translate("wdl", allow_empty_container=True)

