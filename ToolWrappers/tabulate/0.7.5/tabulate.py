from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Float

Tabulate_V0_1_0 = CommandToolBuilder(tool="tabulate", base_command=["tabulate"], inputs=[ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="use the first row of data as a table header")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="print table to FILE (default: stdout)")), ToolInput(tag="in_sep", input_type=String(optional=True), prefix="--sep", doc=InputDocumentation(doc="use a custom column separator (default: whitespace)")), ToolInput(tag="in_float", input_type=Float(optional=True), prefix="--float", doc=InputDocumentation(doc="floating point number format (default: g)")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="set output table format; supported formats:\nplain, simple, grid, fancy_grid, pipe, orgtbl,\nrst, mediawiki, html, latex, latex_booktabs, tsv\n(default: simple)\n")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tabulate_V0_1_0().translate("wdl", allow_empty_container=True)

