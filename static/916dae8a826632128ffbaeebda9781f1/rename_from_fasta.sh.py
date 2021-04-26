from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Rename_From_Fasta_Sh_V0_1_0 = CommandToolBuilder(tool="rename_from_fasta.sh", base_command=["rename_from_fasta.sh"], inputs=[ToolInput(tag="in_file_to_rename", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file to rename")), ToolInput(tag="in_fata_file_finally", input_type=Int(optional=True), prefix="-1", doc=InputDocumentation(doc="fata file whose names will be finally printed")), ToolInput(tag="in_fata_names_replaced", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="fata file whose names will be replaced")), ToolInput(tag="in_directory_optional_default", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="directory (optional). By default the file is replaced in the same location")), ToolInput(tag="in_file_name_added", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="file name ('.rename' will be added at the end)")), ToolInput(tag="in_file_used_fasta", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="file to be used if fasta files are not supplied")), ToolInput(tag="in_usage_message", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="usage message"))], outputs=[], container="quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rename_From_Fasta_Sh_V0_1_0().translate("wdl")

