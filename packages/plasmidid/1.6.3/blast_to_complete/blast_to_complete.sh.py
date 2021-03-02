from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Blast_To_Complete_Sh_V0_1_0 = CommandToolBuilder(tool="blast_to_complete.sh", base_command=["blast_to_complete.sh"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file")), ToolInput(tag="in_identity_cutoff_default", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="identity cutoff (0 - 100), default 90")), ToolInput(tag="in_length_percentage_cutoff", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="length percentage cutoff (0 - 100), default 50, use 90 for genes")), ToolInput(tag="in_directory_optional_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional). By default the file is replaced in the same location")), ToolInput(tag="in_var_4", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="chraracter delimiter, default '_'")), ToolInput(tag="in_field_retrieve_left", input_type=String(optional=True), prefix="-Q", doc=InputDocumentation(doc="field to retrieve (l=left, r=right), default left")), ToolInput(tag="in_var_6", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="chraracter delimiter, default '_'")), ToolInput(tag="in_field_retrieve_right", input_type=String(optional=True), prefix="-D", doc=InputDocumentation(doc="field to retrieve (l=left, r=right), default right")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="-I", doc=InputDocumentation(doc="mode")), ToolInput(tag="in_outputs_one_entry", input_type=String(optional=True), prefix="-u", doc=InputDocumentation(doc="Outputs only one query entry per database entry")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blast_To_Complete_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

