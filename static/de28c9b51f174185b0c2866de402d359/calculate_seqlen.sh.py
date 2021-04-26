from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Calculate_Seqlen_Sh_V0_1_0 = CommandToolBuilder(tool="calculate_seqlen.sh", base_command=["calculate_seqlen.sh"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file")), ToolInput(tag="in_directory_optional_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional). By default the file is replaced in the same location")), ToolInput(tag="in_name_optional_default", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="name (optional). By default is the same name with .length extension")), ToolInput(tag="in_symbol_fasta_header", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="'>' (greater-than) symbol from fasta header")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calculate_Seqlen_Sh_V0_1_0().translate("wdl")

