from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Date_V0_1_0 = CommandToolBuilder(tool="date", base_command=["date"], inputs=[ToolInput(tag="in_date", input_type=String(optional=True), prefix="--date", doc=InputDocumentation(doc="display time described by STRING, not 'now'")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="annotate the parsed date,\nand warn about questionable usage to stderr")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc="like --date; once for each line of DATEFILE")), ToolInput(tag="in_output_datetime_formatfmt", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="[FMT], --iso-8601[=FMT]  output date/time in ISO 8601 format.\nFMT='date' for date only (the default),\n'hours', 'minutes', 'seconds', or 'ns'\nfor date and time to the indicated precision.\nExample: 2006-08-14T02:34:56-06:00")), ToolInput(tag="in_rfc_email", input_type=Boolean(optional=True), prefix="--rfc-email", doc=InputDocumentation(doc="output date and time in RFC 5322 format.\nExample: Mon, 14 Aug 2006 02:34:56 -0600")), ToolInput(tag="in_rfc_three_three_three_nine", input_type=Int(optional=True), prefix="--rfc-3339", doc=InputDocumentation(doc="output date/time in RFC 3339 format.\nFMT='date', 'seconds', or 'ns'\nfor date and time to the indicated precision.\nExample: 2006-08-14 02:34:56-06:00")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="display the last modification time of FILE")), ToolInput(tag="in_set", input_type=String(optional=True), prefix="--set", doc=InputDocumentation(doc="set time described by STRING")), ToolInput(tag="in_universal", input_type=Boolean(optional=True), prefix="--universal", doc=InputDocumentation(doc="print or set Coordinated Universal Time (UTC)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Date_V0_1_0().translate("wdl", allow_empty_container=True)

