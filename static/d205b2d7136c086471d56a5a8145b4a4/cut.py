from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Cut_V0_1_0 = CommandToolBuilder(tool="cut", base_command=["cut"], inputs=[ToolInput(tag="in_bytes", input_type=String(optional=True), prefix="--bytes", doc=InputDocumentation(doc="select only these bytes")), ToolInput(tag="in_characters", input_type=String(optional=True), prefix="--characters", doc=InputDocumentation(doc="select only these characters")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="use DELIM instead of TAB for field delimiter")), ToolInput(tag="in_fields", input_type=String(optional=True), prefix="--fields", doc=InputDocumentation(doc="select only these fields;  also print any line\nthat contains no delimiter character, unless\nthe -s option is specified")), ToolInput(tag="in_ignored", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="(ignored)")), ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="--complement", doc=InputDocumentation(doc="complement the set of selected bytes, characters\nor fields")), ToolInput(tag="in_only_delimited", input_type=Boolean(optional=True), prefix="--only-delimited", doc=InputDocumentation(doc="do not print lines not containing delimiters")), ToolInput(tag="in_output_delimiter", input_type=String(optional=True), prefix="--output-delimiter", doc=InputDocumentation(doc="use STRING as the output delimiter\nthe default is to use the input delimiter")), ToolInput(tag="in_zero_terminated", input_type=Boolean(optional=True), prefix="--zero-terminated", doc=InputDocumentation(doc="line delimiter is NUL, not newline")), ToolInput(tag="in_first_mth_included", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="from first to M'th (included) byte, character or field")), ToolInput(tag="in_nth_byte_character", input_type=String(), position=0, doc=InputDocumentation(doc="from N'th byte, character or field, to end of line")), ToolInput(tag="in_n_m", input_type=String(), position=1, doc=InputDocumentation(doc="from N'th to M'th (included) byte, character or field"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cut_V0_1_0().translate("wdl", allow_empty_container=True)

