from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Gctx2Gct_V0_1_0 = CommandToolBuilder(tool="gctx2gct", base_command=["gctx2gct"], inputs=[ToolInput(tag="in_filename", input_type=File(optional=True), prefix="-filename", doc=InputDocumentation(doc=".gctx file that you would like to converted to .gct\n(default: None)")), ToolInput(tag="in_output_file_path", input_type=File(optional=True), prefix="-output_filepath", doc=InputDocumentation(doc="out path/name for output gct file. Default is just to\nmodify the extension (default: None)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="Whether to print a bunch of output. (default: False)")), ToolInput(tag="in_row_an_not_path", input_type=File(optional=True), prefix="-row_annot_path", doc=InputDocumentation(doc="Path to annotations file for rows (default: None)")), ToolInput(tag="in_col_an_not_path", input_type=File(optional=True), prefix="-col_annot_path", doc=InputDocumentation(doc="Path to annotations file for columns (default: None)\n"))], outputs=[ToolOutput(tag="out_output_file_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_path", type_hint=File()), doc=OutputDocumentation(doc="out path/name for output gct file. Default is just to\nmodify the extension (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gctx2Gct_V0_1_0().translate("wdl", allow_empty_container=True)

