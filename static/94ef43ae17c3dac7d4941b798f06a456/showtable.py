from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, File

Showtable_V0_1_0 = CommandToolBuilder(tool="showtable", base_command=["showtable"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="input table format, should be specified if it cannot\nbe automatically detected")), ToolInput(tag="in_more", input_type=Boolean(optional=True), prefix="--more", doc=InputDocumentation(doc="use the pager mode from Table.more")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="show information about the table columns")), ToolInput(tag="in_stats", input_type=Boolean(optional=True), prefix="--stats", doc=InputDocumentation(doc="show statistics about the table columns")), ToolInput(tag="in_max_lines", input_type=Int(optional=True), prefix="--max-lines", doc=InputDocumentation(doc="maximum number of lines in table output\n(default=screen length, -1 for no limit)")), ToolInput(tag="in_max_width", input_type=Int(optional=True), prefix="--max-width", doc=InputDocumentation(doc="maximum width in table output (default=screen width,\n-1 for no limit)")), ToolInput(tag="in_hide_unit", input_type=Boolean(optional=True), prefix="--hide-unit", doc=InputDocumentation(doc="hide the header row for unit (which is shown only if\none or more columns has a unit)")), ToolInput(tag="in_show_d_type", input_type=Boolean(optional=True), prefix="--show-dtype", doc=InputDocumentation(doc="include a header row for column dtypes")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="column delimiter string")), ToolInput(tag="in_hdu", input_type=String(optional=True), prefix="--hdu", doc=InputDocumentation(doc="name of the HDU to show")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="the path from which to read the table")), ToolInput(tag="in_table_id", input_type=String(optional=True), prefix="--table-id", doc=InputDocumentation(doc="the table to read in")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc="path to one or more files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Showtable_V0_1_0().translate("wdl", allow_empty_container=True)

