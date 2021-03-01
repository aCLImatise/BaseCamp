from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Smof_Clean_V0_1_0 = CommandToolBuilder(tool="smof_clean", base_command=["smof", "clean"], inputs=[ToolInput(tag="in__type_type", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="|p, --type n|p    sequence type")), ToolInput(tag="in_to_upper", input_type=Boolean(optional=True), prefix="--toupper", doc=InputDocumentation(doc="convert to uppercase")), ToolInput(tag="in_to_lower", input_type=Boolean(optional=True), prefix="--tolower", doc=InputDocumentation(doc="convert to lowercase")), ToolInput(tag="in_to_seq", input_type=Boolean(optional=True), prefix="--toseq", doc=InputDocumentation(doc="removes all non-letter characters (gaps, stops, etc.)")), ToolInput(tag="in_reduce_header", input_type=Boolean(optional=True), prefix="--reduce-header", doc=InputDocumentation(doc="Remove all text from header that follows the first\nword (delimited by [ |])")), ToolInput(tag="in_mask_irregular", input_type=Boolean(optional=True), prefix="--mask-irregular", doc=InputDocumentation(doc="converts irregular letters to unknown")), ToolInput(tag="in_mask_lowercase", input_type=Boolean(optional=True), prefix="--mask-lowercase", doc=InputDocumentation(doc="convert lower-case to unknown")), ToolInput(tag="in_col_width", input_type=Int(optional=True), prefix="--col_width", doc=InputDocumentation(doc="width of the sequence output (0 indicates no wrapping)")), ToolInput(tag="in_standardize", input_type=Boolean(optional=True), prefix="--standardize", doc=InputDocumentation(doc="Convert 'X' in DNA to 'N' and '[._]' to '-' (for gaps)")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

