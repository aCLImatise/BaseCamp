from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Vdb_Validate_2_V0_1_0 = CommandToolBuilder(tool="vdb_validate.2", base_command=["vdb-validate.2"], inputs=[ToolInput(tag="in_blob_crc", input_type=Int(optional=True), prefix="--BLOB-CRC", doc=InputDocumentation(doc="Check blobs CRC32 (default: yes)")), ToolInput(tag="in_referential_integrity", input_type=String(optional=True), prefix="--REFERENTIAL-INTEGRITY", doc=InputDocumentation(doc="Check data referential integrity for\ndatabases (default: yes)")), ToolInput(tag="in_consistency_check", input_type=String(optional=True), prefix="--CONSISTENCY-CHECK", doc=InputDocumentation(doc="Deeply check data consistency for tables\n(default: no)")), ToolInput(tag="in_exhaustive", input_type=Boolean(optional=True), prefix="--exhaustive", doc=InputDocumentation(doc="Continue checking object for all possible\nerrors (default: false)")), ToolInput(tag="in_ngc", input_type=File(optional=True), prefix="--ngc", doc=InputDocumentation(doc="path to ngc file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase the verbosity of the program\nstatus messages. Use multiple times for more\nverbosity. Negates quiet.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Turn off all status messages for the\nprogram. Negated by verbose.")), ToolInput(tag="in_option_file", input_type=File(optional=True), prefix="--option-file", doc=InputDocumentation(doc="Read more options and parameters from the")), ToolInput(tag="in_quit_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-L|--log-level <level>           Logging level as number or enum string. One ")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="vdb-validate.2 : 2.10.8"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vdb_Validate_2_V0_1_0().translate("wdl", allow_empty_container=True)

