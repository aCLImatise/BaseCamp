from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Align_Info_2_V0_1_0 = CommandToolBuilder(tool="align_info.2", base_command=["align-info.2"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="print all information")), ToolInput(tag="in_ref", input_type=Boolean(optional=True), prefix="--ref", doc=InputDocumentation(doc="print refseq information [default]")), ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="print bam header (if present)")), ToolInput(tag="in_qual", input_type=Boolean(optional=True), prefix="--qual", doc=InputDocumentation(doc="print quality statistics (if present)")), ToolInput(tag="in_headers", input_type=Boolean(optional=True), prefix="--headers", doc=InputDocumentation(doc="print headers for output blocks")), ToolInput(tag="in_ngc", input_type=File(optional=True), prefix="--ngc", doc=InputDocumentation(doc="path to ngc file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase the verbosity of the program\nstatus messages. Use multiple times for more\nverbosity. Negates quiet.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Turn off all status messages for the\nprogram. Negated by verbose.")), ToolInput(tag="in_option_file", input_type=File(optional=True), prefix="--option-file", doc=InputDocumentation(doc="Read more options and parameters from the")), ToolInput(tag="in_db_path", input_type=File(), position=0, doc=InputDocumentation(doc="Path to the database")), ToolInput(tag="in_quit_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-L|--log-level <level>           Logging level as number or enum string. One ")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="align-info.2 : 2.10.8"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Align_Info_2_V0_1_0().translate("wdl", allow_empty_container=True)

