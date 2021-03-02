from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Directory, String

Vdb_Encrypt_2_V0_1_0 = CommandToolBuilder(tool="vdb_encrypt.2", base_command=["vdb-encrypt.2"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite of existing files")), ToolInput(tag="in_ngc", input_type=File(optional=True), prefix="--ngc", doc=InputDocumentation(doc="PATH to ngc file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase the verbosity of the program\nstatus messages. Use multiple times for more\nverbosity. Negates quiet.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Turn off all status messages for the\nprogram. Negated by verbose.")), ToolInput(tag="in_option_file", input_type=File(optional=True), prefix="--option-file", doc=InputDocumentation(doc="Read more options and parameters from the")), ToolInput(tag="in_source_file", input_type=File(), position=0, doc=InputDocumentation(doc="file to encrypt")), ToolInput(tag="in_destination_file", input_type=File(), position=1, doc=InputDocumentation(doc="name of resulting file")), ToolInput(tag="in_destination_directory", input_type=Directory(), position=2, doc=InputDocumentation(doc="directory of resulting file")), ToolInput(tag="in_directory", input_type=Directory(), position=3, doc=InputDocumentation(doc="directory to encrypt")), ToolInput(tag="in_quit_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-L|--log-level <level>           Logging level as number or enum string. One ")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="Details:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vdb_Encrypt_2_V0_1_0().translate("wdl", allow_empty_container=True)

