from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cramtools_Getref_V0_1_0 = CommandToolBuilder(tool="cramtools_getref", base_command=["cramtools", "getref"], inputs=[ToolInput(tag="in_destination_file", input_type=Boolean(optional=True), prefix="--destination-file", doc=InputDocumentation(doc="Destination file.")), ToolInput(tag="in_fast_a_line_length", input_type=Boolean(optional=True), prefix="--fasta-line-length", doc=InputDocumentation(doc="Wrap fasta lines accroding to this value. (default: 80)")), ToolInput(tag="in_gzip", input_type=Boolean(optional=True), prefix="--gzip", doc=InputDocumentation(doc="Compress fasta with gzip. (default: false)")), ToolInput(tag="in_ignore_not_found", input_type=Boolean(optional=True), prefix="--ignore-not-found", doc=InputDocumentation(doc="Don't fail on not found sequences, just issue a warning. (default: false)")), ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--input-file", doc=InputDocumentation(doc="The path to the CRAM or BAM file to extract sequence MD5 checksums.")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)")), ToolInput(tag="in_main_class", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cramtools_Getref_V0_1_0().translate("wdl", allow_empty_container=True)

